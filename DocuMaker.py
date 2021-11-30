import csv
import csv
import sys
import os
import sys 
import pandas as pd


cf_file = '/Users/satwik/oak9.cf/reqs/oak9/csv/oak9_dr.csv'
def main():
    cf_dict = read_from_csv(cf_file)
    cat = set()
    for req in cf_dict:
        cat.add(req['category'])
    #print(cat)
    coll = dict()
    for cate in cat:
        cas = dict()
        for req in cf_dict:
            if req['category'] == cate:
                new_list = dict()
                keys = {'id', 'subCategory', 'desc', 'elaboration', 'reqSeverity'}
                for key in keys:
                    new_list[key] = req[key]
                cas[req['name']] = new_list
        #print(cas)
        coll[cate] = cas
    #print(coll)
    makeDocs(coll)
    updatesummary(coll)

def updatesummary(coll):

    summary = open('./SUMMARY.md', 'r').readlines()
    summary_write = open('./SUMMARY.md', 'w')
    for line in summary:
        if 'Control Requirements' in line:
            lines = ''
            for keys in coll.keys():
                lines = lines + '  * [' + keys + '](oak9-control-framework/control-requirements/' + keys.replace(' ', '-') + '.md)\n'
            summary_write.write(line + lines)
        else:
            summary_write.write(line)
    summary_write.close()






def makeDocs(coll):

    MDStructure = '''## name

**Id:** <reqId>

**Sub category:** <subCategory>

**Description:** <desc>

**Elaboration:** <elab>

**Severity:** <reqSeverity>

---

'''
    
    for key in coll.keys():
        dict_list = coll[key]
        content = ''
        #print(dict_list)
        for item in dict_list.keys():
            #print(item)
            temp = MDStructure
            temp = temp.replace('name',item)
            temp = temp.replace('<reqId>', dict_list[item]['id'])
            temp = temp.replace('<subCategory>', dict_list[item]['subCategory'])
            temp = temp.replace('<desc>', dict_list[item]['desc'])
            temp = temp.replace('<elab>', dict_list[item]['elaboration'])
            temp = temp.replace('<reqSeverity>', dict_list[item]['reqSeverity'])
            content = content + temp
        #print(content)
        content_file = open('./oak9-control-framework/control-requirements/' + key.replace(' ', '-') + '.md', 'w')
        content_file.write('# ' + key + '\n\n')
        content_file.write(content)
        content_file.close()





def read_from_csv(cf_file):
    try:
        if cf_file.endswith('.csv') and os.path.isfile(cf_file):
            data = open(cf_file, 'r', encoding='utf-8-sig')
            data_reader = csv.reader(data, delimiter=",", quotechar='"')
            output_list = list()
            has_a_row = False

            # read csv data into a dictionary
            # row by row
            for row_index, row in enumerate(data_reader):
                if row_index == 0:
                    row_headings = list()
                    for heading_index, heading in enumerate(row):
                        fixed_heading = heading
                        row_headings.append(fixed_heading)
                else:
                    has_a_row = True
                    content = dict()
                    for cell_index, cell in enumerate(row):
                        content[row_headings[cell_index]]=cell
                    output_list.append(content)

            if (has_a_row):
                return output_list
            else:
                # empty csv
                raise RuntimeError
        else:
            # file check failed
            raise RuntimeError
    except RuntimeError:
        print("Error in converting CSV file to a list of dictionaries", cf_file)
        sys.exit(2)

if __name__ == "__main__":
    
    main()

