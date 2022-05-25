from bottle import post, request
import unittest
import novelties

class Test_test_novelties_mail(unittest.TestCase):
    def test_corrected(self):
        list_mail_cor = ["shevtsov.dima@gmail.com", "magustr.kultury@mail.ru", "magic03soda@yandex.ru", "yeuxuffoifouque.4761@yopmail.com",
                         "sepug8731raddalo@genius.su", "frot.ipo74nnoummeu21@sity.com", "5831sebie@gmail.com", "t.dddddddde@gmail.com", 
                         "Kristina@mail.ru", "2344321chelovek@msai.com", "geniy_maths@gmail.re", "pretti_girl@yandex.rt"]
        flagCor=True
        for mail in list_mail_cor:
            if not novelties.check_mail(mail):
                flagCor = False
        self.assertTrue(flagCor)
    
        
    def test_uncorrected(self):
        list_mail_uncor = ["", "   ", "  d@dddaa", "  shevtsov.dima@gmail.com", "f dd@gmail.com", "fritodossawe-9014@yopmail.com",
                          "pochta_user.gma.il.com", "alex andr.seriy@gmail@com", "elizaveta,dmitrievna@gmail,com", ".mikhail@gmail.com",
                         "grishaAnisimov@@gmail.com", "LupaAndP@gmail.56", "niceBeatzProd$@gmail.com", "bet", ""]
        flagUncor=False
        for mail in list_mail_uncor:
            if novelties.check_mail(mail):
                flagUncor = True
        self.assertFalse(flagUncor)

if __name__ == '__main__':
    unittest.main()
