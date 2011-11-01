# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
root = File.expand_path("../../", __FILE__)
Solution.create(:title=>'SyntraNet', :description=>'<p>SyntraNet is an open health platform from Thrasys, Inc. designed to rapidly configure and deploy highly scalable collaborative healthcare networks.</p><p>SyntraNet provides connectivity, interoperability and collaboration along with easy to use cloud-based applications that are accessible through browsers, desktops, smart phones, pads and telepresence. </p>', :tab_title=>'Overview', :image=>File.open(root + "/picholder/technology/img_health_network.png"))
Solution.create(:title=>'Open Health Platform', :description=>'<p>SyntraNet is based on patent pending innovations for information technology aimed at networks of connected enterprises and uses state of the art architectures for XML services, user interfaces, configurable workflows, rules, and interoperability.</p><p>Core SyntraNet capabilities include services to manage unique identities for persons/patients, providers, and other resources; to interconnect applications, systems and registries with semantic mapping of content; to coordinate workflows and business processes; to implement administrative and clinical rules; and to enforce and audit access to protected information.</p><p>SyntraNet also delivers a new generation of cloud-based administrative, clinical, revenue management, departmental, and patient facing applications to enable coordinated care and open programming interfaces so third-parties can offer additional applications and services.</p>', :tab_title=>'Open Health Platform',:image=>File.open(root + "/picholder/technology/img_open_platform.png"))
Solution.create(:title=>'Coordinated Care Applications', :description=>'<p>Unlike previous generations of healthcare applications designed to automate transactions and manage specific visits or episodes of care, SyntraNet applications are designed from the ground up to coordinate the continuum of care with enhanced productivity and improved workflows.</p><p>Providers, patients, service centers and payers can access applications from anywhere and at anytime to perform a variety of tasks: register persons and patients; access and update demographic and clinical information; place orders and manage clinical workflows; implement rules with decision support; schedule local and global resources; capture charges; automate revenue cycle processes; interoperate and collaborate with other participants; and comply with requirements for quality and public health reporting.</p>', :tab_title=>'Coordinated Care Applications',:image=>File.open(root + "/picholder/technology/img_on-demand_apps.png"))
Solution.create(:title=>'Accountable Care and Medical Homes', :description=>'<p><br/>SyntraNet can be configured as a solution for accountable care organizations to coordinate care and for multi-disciplinary teams to implement medical homes for patients.<br/></p><br/></p> ', :tab_title=>'Accountable Care and Medical Homes',:image=>File.open(root + "/picholder/technology/img_accountable_care-B.png"))
Technology.create(:title=>'SyntraNet Open Health Platform', :description=>'<p>The SyntraNet Open Health Platform provides technologies and components to rapidly build and deploy highly scalable collaborative health networks that provide interoperability, connectivity and applications for communities of care providers, patients, service centers, payers and public health administrators. </p><p>SyntraNet brings patent pending innovations for information technology designed for networks of connected enterprises and implements state of the art architectures for XML services, user interfaces, configurable workflows, rules, interoperability and extensible applications.</p><p>Open application programming interfaces enable third-parties and partners to offer a growing suite of applications that can be delivered and deployed through SyntraNet.</p>', :tab_title=>'Overview',:image=>File.open(root + "/picholder/technology/img_open_health_platform-B.png"))
Technology.create(:title=>'Role-Based Application Services', :description=>'<p>Application services can be flexibly configured to support tasks and workflows for different roles within a health network physicians, nurses, laboratory technicians, pharmacists, patients, front-office personnel, schedulers, system administrators, and so on.</p><p>Some of the application services provided by SyntraNet include capabilities to exchange information, coordinate workflows and interoperate; create and manage unique identities (persons, physicians and other resources); register persons/patients and check-in visits; access and update demographic and clinical information information; place orders and manage clinical workflows; implement rules with decision support; schedule local and global resources; capture charges; automate revenue cycle processes; send alerts and notifications; and comply with requirements for quality and public health reporting.</p><p>Application services can be configured to function as a health information exchange; an on-demand EHR/practice management solution for physician practices; a patient portal; extension applications for hospitals; analytics solutions for population health management; and so on.</p>', :tab_title=>'Role Based Services',:image=>File.open(root + "/picholder/technology/img_roled-based_app_services.png"))
Technology.create(:title=>'Multi-Enterprise Information Model', :description=>'<p>Unlike earlier generations of healthcare solutions, SyntraNet is designed from the ground up for networks of connected enterprises.  Enterprises are modeled as nodes in a connected network with varying degrees of relationship among network participants much like a complex social network for enterprises.</p><p>In the simplest case, a SyntraNet network can be defined as a single, vertically integrated enterprise the usual model in traditional enterprise applications.  A somewhat more complex SyntraNet network is a collection of enterprises that are independent of one another a configuration equivalent to "multi-tenancy" applications.  And SyntraNet networks can be also configured to define considerably more complex topologies than multi-tenancy with hierarchies of organizations with varying degrees of relationship among participants.</p><p>With SyntraNet, applications are targeted at an entire health network with fine-grained control over data, processes, configuration and security for each participant.  The SyntraNet information and application model are unique to the industry and a new foundation for connected health information technology.</p>', :tab_title=>'Enterprise Model',:image=>File.open(root + "/picholder/technology/img_multi-enterprise_model.png"))
Technology.create(:title=>'Configurable, Scalable XML Services', :description=>'<p>From elementary CRUD (create, read, update, delete) services to high level platform and application services, all SyntraNet platform and application services are delivered as internationalized, configurable and scalable XML services deployed in the cloud.</p><p>Internationalized services support users from different locales to use applications with locale specific behaviorscreen layout, text input and edits, reference data, sorting policies, calendaring systems, currency formats, and so on.</p><p>Configurable services use metadata to define functionalityfor example, the "Register New Patient" service can function differently for different network participants based on configuration.   Services are assembled as sequences of pre-defined message request handlers to enable rapid deployment and easy customization.</p><p>Unlike traditional enterprise applications designed for use within firewalls, SyntraNet services are built to scale to very large numbers of users and transactions.</p>', :tab_title=>'XML Services',:image=>File.open(root + "/picholder/technology/img_xml_services.png"))
Technology.create(:title=>'Business Process Management and Customizable Workflows', :description=>'<p>SyntraNet proves a powerful standards-based business process management engine to define and manage business processes based on process graphs.  Process graphs support complex workflow patterns and standard patterns can be assembled together to define extremely complex processes.</p><p>Unlike "free-form" process definition languages based on sequencing series of activities, business processes defined with process graphs can be validated and analyzed to detect process problems and bottlenecks.</p><p>SyntraNet provides a library of standard process definitions for administrative, clinical, revenue management, and patient facing workflows.</p>', :tab_title=>'BPM & Workflows',:image=>File.open(root + "/picholder/technology/img_BPM_workflows.png"))
Technology.create(:title=>'Rules Management', :description=>'<p>The SyntraNet rules engineused to implement administrative, clinical and other rulesis based on a full implementation of the RETE pattern-matching algorithm for extremely efficient representation and processing of large sets of rules.</p><p>The RETE algorithm is well-known among designers of rules and inference based systems and is the most efficient algorithm to evaluate and process larger rule sets.</p><p>SyntraNet provides a library of pre-defined rules and the ability to dynamically add and remove rules at run time.</p>', :tab_title=>'Rules',:image=>File.open(root + "/picholder/technology/img_rules.png"))
Technology.create(:title=>'Powerful User Interface Framework', :description=>'<p>An important goal for a new generation of health information technology is to provide user interfaces that are easy to use, interactively rich and extremely productive user on a variety of front-endsbrowsers, desktops, smart phone, pads and other devices.</p><p>SyntraNet uses open standards to provide a powerful user-interface framework to rapidly build and deploy interactive application user interfaces on a variety of front ends with support for multi-touch and emerging surface platform interfaces.</p><p>The user interface framework includes capabilities to build rich internet applications (RIA) targeted at the Flash and Silverlight run times, browser based interfaces using HTML5 frameworks, and native smart client interfaces for smart phones, pads and surfaces.</p>', :tab_title=>'UI Framework',:image=>File.open(root + "/picholder/technology/img_UI_framework-2.png"))
Technology.create(:title=>'Real-Time Collaboration Services', :description=>'<p>To prepare for a new generation of telehealth applications, SyntraNet integrates open real-time collaboration frameworks and tools to provide real-time social interaction and collaboration services for Connected Health applications.  Real time collaboration services include capabilities for chat, whiteboards, webcams, and shared desktops.</p>', :tab_title=>'Collaboration',:image=>File.open(root + "/picholder/technology/img_collaboration.png"))
Technology.create(:title=>'Enterprise Service/Integration Bus', :description=>'<p>SyntraNet includes a highly scalable and powerful enterprise service bus (ESB) with capabilities to integrate applications, business processes and services across a variety of systems.  The ESB architecture is uniquely suited to manage complex interactions among large number of systems.</p><p>The ESB provides a visual programming environment that uses flow compositions to assemble pretested functional blocks to rapidly configure, test and deploy complex integrations between multiple data sources and applications. The ESB is designed for extremely high performance and reliability.</p>', :tab_title=>'ESB',:image=>File.open(root + "/picholder/technology/img_enterprise_bus.png"))
User.create(:email=>"ramesh@thrasys.com", :password=>"thrasys123", :password_confirmation=>"thrasys123")
User.create(:email=>"ysiad@thrasys.com", :password=>"thrasys123", :password_confirmation=>"thrasys123")
