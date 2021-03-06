from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import shutil
import sys
import tempfile

from observations.r.cake import cake


def test_cake():
  """Test module cake.py by downloading
   cake.csv and testing shape of
   extracted data has 270 rows and 5 columns
  """
  test_path = tempfile.mkdtemp()
  x_train, metadata = cake(test_path)
  try:
    assert x_train.shape == (270, 5)
  except:
    shutil.rmtree(test_path)
    raise()
