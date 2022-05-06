import unittest, re

class Test_test_reviews(unittest.TestCase):
    def test_corrected_phone(self):
        list_phone_cor = ["+7(981)124-94-54", "+7(935)234-69-34", "+7(932)446-61-65", "+1(934)596-35-11", "+7(932)636-22-33",
                         "+8(975)368-44-82", "+7(952)435-76-29", "+7(920)458-38-38", "+7(998)502-25-91", "+7(941)128-29-98"]
        flagCorPhone=True
        for phone in list_phone_cor:
            if bool(re.search(r'^[+]\d[(]\d{3}[)]\d{3}[-]\d{2}[-]\d{2}$',phone))==False:
                flagCorPhone = False
        self.assertTrue(flagCorPhone)
        
    def test_uncorrected_phone(self):
        list_phone_uncor = ["", " ", "+s(dfd)dfe-we-po", "1+2(345)23-54-65", "+7(931)345-23-555", "+79812302246",
                           "7(981)182-38-89", "+7(283)9294828", "=3{289}029_22_29"]
        flagUncorPhone=False
        for phone in list_phone_uncor:
            if bool(re.search(r'^[+]\d[(]\d{3}[)]\d{3}[-]\d{2}[-]\d{2}$',phone))==True:
                flagUncorPhone = True
        self.assertFalse(flagUncorPhone)


    def test_corrected_mail(self):
        list_mail_cor = ["m.m@mail.ru", "m1@gmail.com", "i@mail.do", 
                         "ui.iu@inbox.com", "rt@newdom.uk", "alex.Rod@df.com", 
                         "ops@ops.ops", "weird@mail.ru", "d@notmail.reg"]
        flagCorMail=True
        for mail in list_mail_cor:
            if bool(re.search(r'^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$',mail))==False:
                flagCorMail = False
        self.assertTrue(flagCorMail)
        
    def test_uncorrected_mail(self):
        list_mail_uncor = ["", "1", "m1@", "@mail", "@.", "       ghj@hihi.ui", 
                           "Lml@s.lklkllklk", "shon@ui.909", "ss@hh.mm, ", "s.h@m", "fds%df@ty.uu", "fgh@df..yu"]
        flagUncorMail=False
        for mail in list_mail_uncor:
            if bool(re.search(r'^[a-zA-Z0-9_.+-]+@[a-z]+.[a-z]{2,3}$',mail))==True:
                flagUncorMail = True
        self.assertFalse(flagUncorMail)

if __name__ == '__main__':
    unittest.main()
