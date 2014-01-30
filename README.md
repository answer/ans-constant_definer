# Ans::ConstantDefiner

定数の扱い方について

1. クラスに定義する
1. アクセスするためのメソッドを定義する
1. 定数へのアクセスは、 (2) のメソッドのみ使用する

## Installation

Add this line to your application's Gemfile:

    gem 'ans-constant_definer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ans-constant_definer

## Usage

    class MyClass
      include Ans::ConstantDefiner

      const_def :my_const, %w(a b c)
    end

    MyClass.my_const     # ["a","b","c"]
    MyClass.new.my_const # ["a","b","c"]

## Spec

1. Ans::ConstantDefiner を include すると `const_def` クラスメソッドを定義
1. `const_def` の第一引数の `upcase` で第二引数を定数として定義
1. 第一引数のクラスメソッド、インスタンスメソッドを定義して第二引数を返す

## Setting

    class MyClass
      include Ans::ConstantDefiner

      const_def :my_const, %w(a b c),
        class_method_prefix: "class_prefix",
        instance_method_prefix: "instance_prefix"
    end

    MyClass.class_prefix_my_const
    MyClass.new.instance_prefix_my_const

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
