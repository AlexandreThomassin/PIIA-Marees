from datetime import timedelta, date, datetime


ISO_FORMAT = "%d/%m/%Y %H:%M:%S"

# Exmaple
d2 = datetime(year=2000, month=2, day=3, hour=5, minute=35, second=2)
d2.strftime(iso_format)
