from bottle import post, request
import unittest
import writingProducts

class Test_test_f(unittest.TestCase):
    def test_uncorrected(self):
        list_mail_uncor = ["", "1", "m1@", "@mail",".@mai.ru","kris@.com","     lo@op.ru","jojo @gmail.org"]
        flagUncor=False
        for mail in list_mail_uncor:
            if writingProducts.check_mail(mail):
                flagUncor = True
        self.assertFalse(flagUncor)

    def test_corrected(self):
        list_mail_cor = ["m.m@mail.ru", "m1@gmail.com", "s.h@mr.ty","kristina@gmail.com","sxdxv.op_yt3r@jh.oops.pol"]
        flagCor=True
        for mail in list_mail_cor:
            if not writingProducts.check_mail(mail):
                flagCor = False
        self.assertTrue(flagCor)

if __name__ == '__main__':
    unittest.main()
