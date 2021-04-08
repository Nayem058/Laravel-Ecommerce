@extends('layouts.app')
@section('content')
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-home" aria-hidden="true"></i><a href="{{ route('home') }}">Dashboard</a></li>
                <li><a href="javascript:avoid(0)">Admin</a></li>
                <li><a href="javascript:avoid(0)">Profile</a></li>
            </ul>
        </div>
    </div>
       
    <div class="row animated fadeInUp">
        <div class="row" >
            <div class="col-sm-12 col-md-4 col-md-offset-4">                
                <h2 style="text-align: center">My Profile</h2>
                <div class="user-photo text-center">
                    <img alt="profile photo" style="height:200px; weight:280; " src="{{ asset('/') }}assets/admin/images/avatar/nayem2.jpg" />                                        
                </div><br>
                <div class="text-center" size='2x'>
                    <a href="https://www.facebook.com/nayemuddin058/" target="blank"><li class="fab fa-facebook-square fa-2x"></li></a>
                    <a href="https://twitter.com/nayemuddin058" target="blank"><li class="fab fa-twitter-square fa-2x"></li></a>
                    <a href="https://www.linkedin.com/in/nayem-uddin058/" target="blank"><li class="fab fa-linkedin fa-2x"></li></a>
                </div>
                
                    
                <div class="table-responsive">
                    <table class="data-table table table-striped nowrap table-bordered" cellspacing="0" width="100%">
                        <tbody>
                            <tr>
                                <td>Name</td>
                                <td>{{ Auth::user()->name }}</td>
                            </tr>
                            <tr>
                                <td>User Name</td>
                                <td>Nayem</td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>12345678</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>{{ Auth::user()->email }}</td>
                            </tr>
                            <tr>
                                <td>Contact</td>
                                <td>01629546029</td>
                            </tr>
                        </tbody>

                    </table>
                </div>
            </>
            <!--STRIPE-->
        </div>
    </div>
@endsection
