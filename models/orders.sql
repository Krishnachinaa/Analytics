select
  *
from {{ source('ANALYTICS', 'ORDERS') }}