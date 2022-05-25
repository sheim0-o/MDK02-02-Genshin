from bottle import post, request
import unittest
import novelties

class Test_test_novelties_version(unittest.TestCase):
     def test_uncorrected(self):
        list_version_uncor = ["2.31112", "221.2", "r,22", "2,3", " 2. 3", " ", "3,22,2", "3.3.3", "0.3111", "0@32", "0/2", "b.dd"]
        flagUncor=False
        for version in list_version_uncor:
            if novelties.check_version(version):
                flagUncor = True
        self.assertFalse(flagUncor)
    
     def test_corrected(self):
        list_version_uncor = ["1.23", "1.1", "1.0", "3.0", "2.11", "4.21", "65.1", "1.3", "3.5", "3.6", "4.7"]
        flagCor=True
        for version in list_version_uncor:
            if not novelties.check_version(version):
                flagCor = False
        self.assertTrue(flagCor)


if __name__ == '__main__':
    unittest.main()
