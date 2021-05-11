const path = require("path");

module.exports = {
  // setupFilesAfterEnv: ["<rootDir>/jest.setup.ts"],
  modulePaths: ["node_modules"],
  collectCoverageFrom: [
    "**/*.test.{js,jsx,ts,tsx}",
    "!**/*.d.ts",
    "!**/node_modules/**",
  ],
  testPathIgnorePatterns: ["/node_modules/"],
  transform: {
    "^.+\\.(js|jsx|ts|tsx)$": "babel-jest",
  },
  transformIgnorePatterns: ["/node_modules/"],
};
