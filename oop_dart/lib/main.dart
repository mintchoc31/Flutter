import 'package:flutter/material.dart';
//코드의 시작점
import 'package:oop_dart/grade.dart';
import 'package:oop_dart/member.dart';
import 'package:oop_dart/member_repository.dart';
import 'package:oop_dart/member_repository_Impl.dart';
import 'package:oop_dart/member_service.dart';
import 'package:oop_dart/member_service_impl.dart';

void main() {
  // 테스트
  MemberRepository memberRepository = MemoryMemberRepositoryImpl();
  MemberService memberService = MemberServiceImpl(memberRepository);

  //
  Member member1 = Member(id: 1, name: '홍길동', grade: Grade.BASIC);
  Member member2 = Member(id: 2, name: '이순신', grade: Grade.VIP);

  memberService.signUp(member1);
  // 회원 찾기
  Member? findMember = memberService.selectMember(member2.id);
  print(findMember.toString());
}
