# -*- coding: utf-8 -*-
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import csv
import numpy as np
import os
import sys

from observations.util import maybe_download_and_extract


def {{function}}(path):
  """{{desc}}
  Args:

    path: str.
      Path to directory which either stores file or otherwise file will
      be downloaded and extracted there.
      Filename is `{{file_name}}`.

  Returns:

    Tuple of np.ndarray `x_train` with {{rows}} rows and {{cols}} columns and
    dictionary `metadata` of column headers (feature names).
  """
  import pandas as pd
  path = os.path.expanduser(path)
  filename = '{{file_name}}'
  if not os.path.exists(os.path.join(path, filename)):
    url = '{{url}}'
    maybe_download_and_extract(path, url,
                               save_file_name='{{file_name}}',
                               resume=False)

  data = pd.read_csv(os.path.join(path, filename), index_col=0,
                     parse_dates=True)
  x_train = data.values
  metadata = {'columns': data.columns}
  return x_train, metadata

