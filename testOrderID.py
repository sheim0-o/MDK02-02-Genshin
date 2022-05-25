from bottle import post, request
import unittest
import writingProducts

class Test_test_f(unittest.TestCase):
    def test_uncorrected(self):
        list_id_uncor = ["", "12345678","123","ase"," ","qazwsxedc","098765432112","w2f4", "38292"]
        flagUncor=False
        for id in  list_id_uncor:
            if writingProducts.check_Id(id):
                flagUncor = True
        self.assertFalse(flagUncor)

    def test_corrected(self):
        list_id_cor = ["123456789","987654321","569321099","666666666"]
        flagCor=True
        for id in list_id_cor:
            if not writingProducts.check_Id(id):
                flagCor = False
        self.assertTrue(flagCor)

if __name__ == '__main__':
    unittest.main()
