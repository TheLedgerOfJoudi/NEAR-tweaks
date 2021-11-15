import * as contract from "../assembly";

describe("Contract", () => {
  it("says hello", () => {
    expect(contract.helloWorld()).toStrictEqual("hello world")
  })
})
