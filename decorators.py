
# def decorator(func):
#     def decorated(input_text):
#         print('함수 시작')
#         func(input_text)
#         print('함수 끝')
#     return decorated
#
#
# @decorator
# def hello_world(input_text):
#
#     print(input_text)
#
# hello_world('hello_world')


def aaab(func):
    def decorated(a,b):
        if a<=0 or b <=0:
            print("Error")
        else:
            func(a,b)
    return decorated

@aaab
def test1(a,b):
    print("사격형 : ", a*b)

@aaab
def test2(a,b):
    print("삼각형 : ", a*b/2)

test1(5,10)
test2(-1,5)