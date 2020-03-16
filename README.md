# Ruby TCG

> test && commit || generate

A prototype test framework that auto-generates the code to pass your test.

## Usage

    rspec example && ruby src/tcg/commit.rb || ruby src/tcg/generate.rb
