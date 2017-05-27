
## Getting started

clone the repo and then install the needed gems:

```
$ bundle install --without production
```

migrate the database:

```
$ rails db:migrate
```

run the test suite

```
$ rails test
```

run the app in a local server:

```
$ rails server
```


In the Rails console, pull the first user out of the database and assign it to the variable user. What is the output of puts user.attributes.to_yaml? Compare this to using the y method via y user.attributes.

```
irb(main):007:0> puts user.attributes.to_yaml
---
id: 1
name: highslater
email: highslater@hotmail.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2017-05-20 04:47:28.660907000 Z
  zone: !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *1
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &2 2017-05-20 04:47:28.660907000 Z
  zone: !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *2
password_digest: "$2a$10$S88PPuUtHqinfaSP6Ipv5.yLVQmB1mjA1x6uzQMwENTBiOiue4yAm"
=> nil
irb(main):008:0> y user.attributes
---
id: 1
name: highslater
email: highslater@hotmail.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2017-05-20 04:47:28.660907000 Z
  zone: !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *1
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &2 2017-05-20 04:47:28.660907000 Z
  zone: !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: *2
password_digest: "$2a$10$S88PPuUtHqinfaSP6Ipv5.yLVQmB1mjA1x6uzQMwENTBiOiue4yAm"
=> nil

```



```
>>  User.find_by(id: cookies.signed[:user_id])
=> #<User id: 2, name: "jason", email: "highslater@hotmail.com", created_at: "2017-05-24 17:30:40", updated_at: "2017-05-27 20:16:07", password_digest: "$2a$10$Dx66wgfalTw6j1MfP21LHe7J.1L1Fwp72/sDWi2V3Sp...", remember_digest: "$2a$10$.dUTa37jRl0RL3TwLknyneKoCAP5Cy98raQW9FOFJC3...">
>>  remember_digest = User.find_by(id: cookies.signed[:user_id]).remember_digest
=> "$2a$10$.dUTa37jRl0RL3TwLknyneKoCAP5Cy98raQW9FOFJC3d0p7jRmWf6"
>>  remember_token = cookies[:remember_token]
=> "Op1RtnrwKWHCzbKATwTRKg"
>>  BCrypt::Password.new(remember_digest).is_password?(remember_token)
=> true
>>   

```



