class Schedule < ActiveHash::Base
  self.data = [
    { id: 1, time:  '0:00' },
    { id: 2, time:  '0:30' },
    { id: 3, time:  '1:00' },
    { id: 5, time:  '1:30' },
    { id: 6, time:  '2:00' },
    { id: 7, time:  '2:30' },
    { id: 8, time:  '3:00' },
    { id: 9, time:  '3:30' },
    { id: 10, time: '4:00' },
    { id: 11, time: '4:30' },
    { id: 12, time: '5:00' },
    { id: 13, time: '5:30' },
    { id: 14, time: '6:00' },
    { id: 15, time: '6:30' },
    { id: 16, time: '7:00' },
    { id: 17, time: '7:30' },
    { id: 18, time: '8:00' },
    { id: 19, time: '8:30' },
    { id: 20, time: '9:00' },
    { id: 21, time: '9:30' },
    { id: 22, time: '10:00' },
    { id: 23, time: '10:30' },
    { id: 24, time: '11:00' },
    { id: 25, time: '11:30' },
    { id: 26, time: '12:00' },
    { id: 27, time: '12:30' },
    { id: 28, time: '13:00' },
    { id: 29, time: '13:30' },
    { id: 30, time: '14:00' },
    { id: 31, time: '14:30' },
    { id: 32, time: '15:00' },
    { id: 33, time: '15:30' },
    { id: 34, time: '16:00' },
    { id: 35, time: '16:30' },
    { id: 36, time: '17:00' },
    { id: 37, time: '17:30' },
    { id: 38, time: '18:00' },
    { id: 39, time: '18:30' },
    { id: 40, time: '19:00' },
    { id: 41, time: '19:30' },
    { id: 42, time: '20:00' },
    { id: 43, time: '20:30' },
    { id: 44, time: '21:00' },
    { id: 45, time: '21:30' },
    { id: 46, time: '22:00' },
    { id: 47, time: '22:30' },
    { id: 48, time: '23:00' },
    { id: 49, time: '23:30' }
  ]

  include ActiveHash::Associations
  has_many :plans
end
