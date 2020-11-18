/*
PROBLEM DESCRIPTION:(https://leetcode.com/problems/string-to-integer-atoi/)
*/

var myAtoi = function(s) {
  let ans = Number(s.trim().match(/^[-+]?[0-9]*/));
  let sign = ans >= 0 ? 1 : -1;
  let res =  ans ? ans : 0;
  if ((Math.abs(res)) >= (Math.pow(2, 31))) {
      res = sign > 0 ? (Math.pow(2, 31)-1) : Math.pow(-2, 31);
  }
  return res;
};
