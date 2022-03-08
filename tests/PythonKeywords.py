from random import randint

def lib_keyword(string):
    print(string)

def find_answer(array, keyword):
    for thing in array[0]:
        if thing.get("name") == keyword:
            return thing.get("answer_count")
    raise Exception(f"{keyword} not found")

def return_array_length(array):
    return len(array[0])

def generate_thing():
    return "macaroni_" + str(randint(1,1000000))