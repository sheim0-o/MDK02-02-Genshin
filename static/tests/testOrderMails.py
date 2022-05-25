from bottle import post, request
import unittest
import writingProducts

class Test_test_f(unittest.TestCase):
    def test_uncorrected(self):
        list_mail_uncor = ["", "1", "m1@", "@mail",".@mai.ru",
                           "     lo@op.ru","jojo @gmail.org", "kris@.com",
                          "mail/for me@mail.com", "arina@4$5.rex", "enterne d@gon.pre",
                          "  " , "andrey@.com", "/elina12@vom.com"]
        flagUncor=False
        for mail in list_mail_uncor:
            if writingProducts.check_mail(mail):
                flagUncor = True
        self.assertFalse(flagUncor)

    def test_corrected(self):
        list_mail_cor = ["kristina@gmail.com","kristina243@gmail.com",
                         "mur@mail.com.ru",
                         "tr1233@mail.com","meowMy@mre.pot",
                         "67589rr@rot.mail","kri_ina@gmail.com","1g9t6h7@general.not"]
        flagCor=True
        for mail in list_mail_cor:
            if not writingProducts.check_mail(mail):
                flagCor = False
        self.assertTrue(flagCor)

if __name__ == '__main__':
    unittest.main()
