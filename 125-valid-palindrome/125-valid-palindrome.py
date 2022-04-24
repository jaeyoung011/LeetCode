class Solution:
    def isPalindrome(self, s: 'str') -> bool:
        #s = s.replace(" " , "")
        # 특수 문자도 제거해줘야한다.
        strs = []
        for char in s:
            if char.isalnum():
                strs.append(char.lower())

        mid = len(strs)//2
        for i in range(mid):
            if strs[i] != strs[-i-1]:
                return False
        return True

