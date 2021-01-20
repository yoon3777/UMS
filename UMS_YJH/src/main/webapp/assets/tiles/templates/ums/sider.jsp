<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/view">
                <div class="sidebar-brand-icon rotate-n-15">
                  <i class="fa fa-envelope-o"></i>
                </div>
                <div class="sidebar-brand-text mx-3">UMS</div>
            </a>
       
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Menu
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="">
                    <i class="fa fa-paper-plane" aria-hidden="true"></i>
                    <span>메시지 전송</span>
                </a>
                <div id="subMenu" class="collapse">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">전송 타입</h6>
                        <a class="collapse-item" href="/msgsend/sms">SMS/LMS</a>
                        <a class="collapse-item" href="/msgsend/mms">MMS</a>
                        <a class="collapse-item" href="/msgsend/vms">VMS</a>
                        <a class="collapse-item" href="/msgsend/fms">FMS</a>
                    </div>
                </div>
            </li>
            
            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="">
                    <i class="fa fa-book" aria-hidden="true"></i>
                    <span>전송 결과</span>
                </a>
                <div id="subMenu" class="collapse">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">메시지 전송 정보</h6>
                        <a class="collapse-item" href="/msgreport/report">전송 결과 조회</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

        </ul>
        <!-- End of Sidebar -->