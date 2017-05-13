group "tracetool"
    project "tracetool"
            removeconfigurations "TRACE*"            
            kind "StaticLib"                    
            files
            {
                "%{THIRD_PARTY}/tracetool/**.h",
                "%{THIRD_PARTY}/tracetool/**.cpp"                
            }                     

  

    project "getopt"            
        kind "StaticLib"         
        defines { "STATIC_GETOPT" }            
        files
        {
            "%{THIRD_PARTY}/getopt/**.h",
            "%{THIRD_PARTY}/getopt/**.c"      
                           
        }     

    project "jsoncpp"            
        kind "StaticLib"                     
        files
        {
            "%{THIRD_PARTY}/jsoncpp/include/**.h",
            "%{THIRD_PARTY}/jsoncpp/**.cpp"      
                           
        } 
        includedirs
        {          
            "%{THIRD_PARTY}/jsoncpp/include"
        }      


group "gtest"


    project "gtest"            
        removeconfigurations "TRACE*"   
        kind "StaticLib"     
        defines { "GTEST_HAS_PTHREAD=0", "_HAS_EXCEPTIONS=1" }            
        files
        {
        
            "%{THIRD_PARTY}/googletest/googletest/src/gtest-all.cc"
                 
                           
        }             
        includedirs
        {
           
            "%{THIRD_PARTY}/googletest/googletest/include",
            "%{THIRD_PARTY}/googletest/googletest"
        }
        
    


    project "gtest_main"     
        removeconfigurations "TRACE*"   
        kind "StaticLib"     
        defines { "GTEST_HAS_PTHREAD=0", "_HAS_EXCEPTIONS=1" }            
        files
        {
        
            "%{THIRD_PARTY}/googletest/googletest/src/gtest-all.cc",
            "%{THIRD_PARTY}/googletest/googletest/src/gtest_main.cc"
              
                           
        }             
        includedirs
        {
           
            "%{THIRD_PARTY}/googletest/googletest/include",
            "%{THIRD_PARTY}/googletest/googletest"
        }
        
    
        



    project "gmock"         
        removeconfigurations "TRACE*"   
        kind "StaticLib"     
        defines { "GTEST_HAS_PTHREAD=0", "_HAS_EXCEPTIONS=1" }            
        files
        {
        
            "%{THIRD_PARTY}/googletest/googletest/src/gtest-all.cc",
            "%{THIRD_PARTY}/googletest/googlemock/src/gmock-all.cc"      
                           
        }             
        includedirs
        {
           
            "%{THIRD_PARTY}/googletest/googletest/include",
            "%{THIRD_PARTY}/googletest/googletest",
            "%{THIRD_PARTY}/googletest/googlemock/include",
            "%{THIRD_PARTY}/googletest/googlemock"

        }
        
    



    project "gmock_main"   
        removeconfigurations "TRACE*"   
        kind "StaticLib"     
        defines { "GTEST_HAS_PTHREAD=0", "_HAS_EXCEPTIONS=1" }            
        files
        {
        
            
            "%{THIRD_PARTY}/googletest/googletest/src/gtest-all.cc",
            "%{THIRD_PARTY}/googletest/googlemock/src/gmock-all.cc",
            "%{THIRD_PARTY}/googletest/googlemock/src/gmock_main.cc"
                           
        }             
        includedirs
        {       
           
            "%{THIRD_PARTY}/googletest/googletest/include",
            "%{THIRD_PARTY}/googletest/googletest",
            "%{THIRD_PARTY}/googletest/googlemock/include",
            "%{THIRD_PARTY}/googletest/googlemock"

        }

group "glog"
    project "glog"            
        removeconfigurations "TRACE*"   
        kind "StaticLib"
        defines { "GOOGLE_GLOG_DLL_DECL=", "HAVE_SNPRINTF" }
        files
        {
            "%{THIRD_PARTY}/glog-master/src/logging.cc",
            "%{THIRD_PARTY}/glog-master/src/windows/port.cc",
            "%{THIRD_PARTY}/glog-master/src/raw_logging.cc",
            "%{THIRD_PARTY}/glog-master/src/utilities.cc",
            "%{THIRD_PARTY}/glog-master/src/vlog_is_on.cc",
            ------------------------------------------------------------------------------------------------------------
            "%{THIRD_PARTY}/glog-master/src/base/commandlineflags.h",
            "%{THIRD_PARTY}/glog-master/src/windows/config.h",
            "%{THIRD_PARTY}/glog-master/src/base/googleinit.h",
            "%{THIRD_PARTY}/glog-master/src/windows/glog/log_severity.h",
            "%{THIRD_PARTY}/glog-master/src/windows/glog/logging.h",
            "%{THIRD_PARTY}/glog-master/src/base/mutex.h",
            "%{THIRD_PARTY}/glog-master/src/windows/port.h",
            "%{THIRD_PARTY}/glog-master/src/windows/glog/raw_logging.h",
            "%{THIRD_PARTY}/glog-master/src/windows/glog/stl_logging.h",
            "%{THIRD_PARTY}/glog-master/src/utilities.h",
            "%{THIRD_PARTY}/glog-master/src/windows/glog/vlog_is_on.h"
        }
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp"}
        }
        includedirs
        {
            "%{THIRD_PARTY}/glog-master/src/windows",
                        
        }

group "gflags"
    project "gflags"      
        removeconfigurations "TRACE*"   
        kind "StaticLib"
        characterset "MBCS"
        defines { "GFLAGS_IS_A_DLL=0" }
        files
        {
            "%{THIRD_PARTY}/gflags-master/src/**.cc",
            "%{THIRD_PARTY}/gflags-master/src/**.h",
            "%{THIRD_PARTY}/gflags-master/bin/include/gflags/**.h",
        }
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp", "**.cc"}
        }
        includedirs
        {
            "%{THIRD_PARTY}/gflags-master/bin/include/gflags",
            "%{THIRD_PARTY}/gflags-master/bin/include",
                        
        }

    project "gflags_nothreads"        
        removeconfigurations "TRACE*"   
        kind "StaticLib"
        characterset "MBCS"
        defines { "GFLAGS_IS_A_DLL=0", "NO_THREADS" }
        files
        {
            "%{THIRD_PARTY}/gflags-master/src/**.cc",
            "%{THIRD_PARTY}/gflags-master/src/**.h",
            "%{THIRD_PARTY}/gflags-master/bin/include/gflags/**.h",
        }
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp", "**.cc"}
        }
        includedirs
        {
            "%{THIRD_PARTY}/gflags-master/bin/include/gflags",
            "%{THIRD_PARTY}/gflags-master/bin/include",
                        
        }



group "libcurl"
    project "libcurl"
        kind "SharedLib"
        defines { "BUILDING_LIBCURL", "USE_WINDOWS_SSPI", "USE_SCHANNEL", "USE_IPV6", "HTTP_ONLY" }
        files
        {
            "%{THIRD_PARTY}/curl-7.53.1/lib/amigaos.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/asyn-ares.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/asyn-thread.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/base64.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/conncache.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/connect.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/content_encoding.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/cookie.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_addrinfo.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_des.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_endian.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_fnmatch.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_gethostname.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_gssapi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_memrchr.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_multibyte.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_ntlm_core.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_ntlm_wb.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_rtmp.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_sasl.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_sspi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_threads.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/dict.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/dotdot.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/easy.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/escape.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/file.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/fileinfo.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/formdata.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ftp.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ftplistparser.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/getenv.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/getinfo.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/gopher.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hash.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hmac.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostasyn.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostcheck.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostip.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostip4.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostip6.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostsyn.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http2.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_chunks.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_digest.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_negotiate.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_ntlm.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_proxy.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/idn_win32.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/if2ip.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/imap.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/inet_ntop.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/inet_pton.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/krb5.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ldap.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/llist.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/md4.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/md5.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/memdebug.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/mprintf.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/multi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/netrc.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/non-ascii.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/nonblock.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/openldap.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/parsedate.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/pingpong.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/pipeline.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/pop3.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/progress.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/rand.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/rtsp.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/security.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/select.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/sendf.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/share.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/slist.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/smb.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/smtp.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/socks.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/socks_gssapi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/socks_sspi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/speedcheck.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/splay.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ssh.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strcase.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strdup.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strerror.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strtok.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strtoofft.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/system_win32.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/telnet.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/tftp.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/timeval.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/transfer.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/url.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/version.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/warnless.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/wildcard.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/x509asn1.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/cleartext.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/cram.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/digest.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/digest_sspi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/krb5_gssapi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/krb5_sspi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/ntlm.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/ntlm_sspi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/oauth2.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/spnego_gssapi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/spnego_sspi.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/vauth.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/axtls.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/cyassl.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/darwinssl.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/gskit.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/gtls.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/mbedtls.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/nss.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/openssl.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/polarssl.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/polarssl_threadlock.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/schannel.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/vtls.c",
            "%{THIRD_PARTY}/curl-7.53.1/lib/amigaos.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/arpa_telnet.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/asyn.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/config-win32.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/conncache.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/connect.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/content_encoding.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/cookie.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_addrinfo.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_base64.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_des.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_endian.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_fnmatch.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_gethostname.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_gssapi.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_hmac.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_ldap.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_md4.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_md5.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_memory.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_memrchr.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_multibyte.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_ntlm_core.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_ntlm_wb.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_printf.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_rtmp.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_sasl.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_sec.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_setup.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_setup_once.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_sspi.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curl_threads.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/curlx.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/dict.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/dotdot.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/easyif.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/escape.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/file.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/fileinfo.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/formdata.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ftp.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ftplistparser.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/getinfo.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/gopher.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hash.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostcheck.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/hostip.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http2.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_chunks.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_digest.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_negotiate.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_ntlm.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/http_proxy.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/if2ip.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/imap.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/inet_ntop.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/inet_pton.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/llist.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/memdebug.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/multihandle.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/multiif.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/netrc.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/non-ascii.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/nonblock.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/parsedate.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/pingpong.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/pipeline.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/pop3.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/progress.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/rand.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/rtsp.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/select.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/sendf.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/setup-vms.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/share.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/sigpipe.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/slist.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/smb.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/smtp.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/sockaddr.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/socks.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/speedcheck.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/splay.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/ssh.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strcase.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strdup.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strerror.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strtok.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/strtoofft.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/system_win32.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/telnet.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/tftp.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/timeval.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/transfer.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/url.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/urldata.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/warnless.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/wildcard.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/x509asn1.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/digest.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/ntlm.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vauth/vauth.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/axtls.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/cyassl.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/darwinssl.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/gskit.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/gtls.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/mbedtls.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/nssg.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/openssl.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/polarssl.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/polarssl_threadlock.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/schannel.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/vtls/vtls.h",
            "%{THIRD_PARTY}/curl-7.53.1/lib/libcurl.rc"
        }
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp"}
        }
        includedirs
        {
            "%{THIRD_PARTY}/curl-7.53.1/include",
            "%{THIRD_PARTY}/curl-7.53.1/lib"
        }
        links
        {
            "ws2_32.lib",
            "wldap32.lib",
            "Crypt32.lib"
        }


group "zlib"

    project "zlib"            
        kind "StaticLib"                          
        files
        {
            "%{THIRD_PARTY}/zlib/*.h",
            "%{THIRD_PARTY}/zlib/*.c"      
                           
        }      
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp"}
        }

    project "zlib_dll"         
        targetname "zlib1"    
        kind "SharedLib"                  
        flags { "NoManifest" }
        files
        {
            "%{THIRD_PARTY}/zlib/*.h",
            "%{THIRD_PARTY}/zlib/*.c",
            "%{THIRD_PARTY}/zlib/win32/*.def",
            "%{THIRD_PARTY}/zlib/win32/*.rc"                               
        }        
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp"}
        }


group "cryptopp"

    project "cryptopp"            
        kind "StaticLib"            
        characterset "MBCS"
        defines { "_WINDOWS", "USE_PRECOMPILED_HEADERS", "WIN32" }    
        vpaths 
        { 
            ["Header Files"] = {"**.h", "**.hpp"},
            ["Source Files"] = {"**.c", "**.cpp"}
        }
        
        filter { "platforms:Win32" }
           -- defines { "WIN32", "_WINDOWS" }                 
            files
            {
                "%{THIRD_PARTY}/cryptopp565/**.h",
                "%{THIRD_PARTY}/cryptopp565/**.c",
                "%{THIRD_PARTY}/cryptopp565/**.cpp",
                "%{THIRD_PARTY}/cryptopp565/**.asm"                    
            }   
            removefiles
            {
                "%{THIRD_PARTY}/cryptopp565/test.cpp",
                "%{THIRD_PARTY}/cryptopp565/fipstest.cpp",
                "%{THIRD_PARTY}/cryptopp565/fipsalgt.cpp",
                "%{THIRD_PARTY}/cryptopp565/regtest.cpp",
                "%{THIRD_PARTY}/cryptopp565/bench*.cpp",
                "%{THIRD_PARTY}/cryptopp565/eccrypto.cpp",
                "%{THIRD_PARTY}/cryptopp565/eprecomp.cpp",                    
                "%{THIRD_PARTY}/cryptopp565/dlltest.cpp",
                "%{THIRD_PARTY}/cryptopp565/datatest.cpp",
                "%{THIRD_PARTY}/cryptopp565/validat*.cpp",
                "%{THIRD_PARTY}/cryptopp565/x64dll.asm",
                "%{THIRD_PARTY}/cryptopp565/x64masm.asm" 
            }
        filter "platforms:x64"
           -- defines { "WIN32", "_WINDOWS", "_USRDLL", "OLSDLL_EXPORTS", "OLS_WIN_RING0" }
            files
            {
                "%{THIRD_PARTY}/cryptopp565/**.h",
                "%{THIRD_PARTY}/cryptopp565/**.c",
                "%{THIRD_PARTY}/cryptopp565/**.cpp",
                "%{THIRD_PARTY}/cryptopp565/**.asm"                   
            }
            removefiles
            {
                "%{THIRD_PARTY}/cryptopp565/test.cpp",
                "%{THIRD_PARTY}/cryptopp565/fipstest.cpp",
                "%{THIRD_PARTY}/cryptopp565/fipsalgt.cpp",
                "%{THIRD_PARTY}/cryptopp565/regtest.cpp",
                "%{THIRD_PARTY}/cryptopp565/bench*.cpp",
                "%{THIRD_PARTY}/cryptopp565/eccrypto.cpp",
                "%{THIRD_PARTY}/cryptopp565/eprecomp.cpp",                    
                "%{THIRD_PARTY}/cryptopp565/dlltest.cpp",
                "%{THIRD_PARTY}/cryptopp565/datatest.cpp",
                "%{THIRD_PARTY}/cryptopp565/validat*.cpp"
                
            }
                      
        filter { "files:**.asm", "platforms:Win32" }            
            buildmessage "Compiling %{file.relpath}"
            buildcommands 
            {
                "ml -c \"-Fl%{cfg.objdir}/%{file.basename}.lst\" \"-Fo%{cfg.objdir}/%{file.basename}.obj\" \"%{file.relpath}\""
            }
            buildoutputs
            {
                "%{cfg.objdir}/%{file.basename}.obj"
            }

        filter { "files:**.asm", "platforms:x64" }            
            buildmessage "Compiling %{file.relpath}"
            buildcommands 
            {
                "ml64 -c \"-Fl%{cfg.objdir}/%{file.basename}.lst\" \"-Fo%{cfg.objdir}/%{file.basename}.obj\" \"%{file.relpath}\""
            }
            buildoutputs
            {
                "%{cfg.objdir}/%{file.basename}.obj"
            }