from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import shutil
import sys
import tempfile

from observations.r.traffic import traffic


def test_traffic():
  """Test module traffic.py by downloading
   traffic.csv and testing shape of
   extracted data has 184 rows and 4 columns
  """
  test_path = tempfile.mkdtemp()
  x_train, metadata = traffic(test_path)
  try:
    assert x_train.shape == (184, 4)
  except:
    shutil.rmtree(test_path)
    raise()
