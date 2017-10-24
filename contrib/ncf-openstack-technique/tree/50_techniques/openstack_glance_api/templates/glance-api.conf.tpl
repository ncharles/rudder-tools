[DEFAULT]
# Show more verbose log output (sets INFO log level output)
#verbose=True

# Show debugging output in logs (sets DEBUG log level output)
#debug=False

# Maximum image size (in bytes) that may be uploaded through the
# Glance API server. Defaults to 1 TB.
# WARNING: this value should only be increased after careful consideration
# and must be set to a value under 8 EB (9223372036854775808).
#image_size_cap=1099511627776

# Address to bind the API server
#bind_host=0.0.0.0

# Port the bind the API server to
#bind_port=9292

# Log to this file. Make sure you do not set the same log file for both the API
# and registry servers!
#
# If `log_file` is omitted and `use_syslog` is false, then log messages are
# sent to stdout as a fallback.
#log_file=/var/log/glance/api.log

# Backlog requests when creating socket
#backlog=4096

# TCP_KEEPIDLE value in seconds when creating socket.
# Not supported on OS X.
#tcp_keepidle=600

# API to use for accessing data. Default value points to sqlalchemy
# package, it is also possible to use: glance.db.registry.api
# data_api = glance.db.sqlalchemy.api

# The number of child process workers that will be
# created to service API requests. The default will be
# equal to the number of CPUs available. (integer value)
#workers=4

# Maximum line size of message headers to be accepted.
# max_header_line may need to be increased when using large tokens
# (typically those generated by the Keystone v3 API with big service
# catalogs)
# max_header_line = 16384

# Role used to identify an authenticated user as administrator
#admin_role=admin

# Allow unauthenticated users to access the API with read-only
# privileges. This only applies when using ContextMiddleware.
#allow_anonymous_access=False

# Allow access to version 1 of glance api
#enable_v1_api=True

# Allow access to version 2 of glance api
#enable_v2_api=True

# Return the URL that references where the data is stored on
# the backend storage system.  For example, if using the
# file system store a URL of 'file:///path/to/image' will
# be returned to the user in the 'direct_url' meta-data field.
# The default value is false.
#show_image_direct_url=False

# Send headers containing user and tenant information when making requests to
# the v1 glance registry. This allows the registry to function as if a user is
# authenticated without the need to authenticate a user itself using the
# auth_token middleware.
# The default value is false.
#send_identity_headers=False

# Supported values for the 'container_format' image attribute
#container_formats=ami,ari,aki,bare,ovf,ova

# Supported values for the 'disk_format' image attribute
#disk_formats=ami,ari,aki,vhd,vmdk,raw,qcow2,vdi,iso

# Property Protections config file
# This file contains the rules for property protections and the roles/policies
# associated with it.
# If this config value is not specified, by default, property protections
# won't be enforced.
# If a value is specified and the file is not found, then the glance-api
# service will not start.
#property_protection_file =

# Specify whether 'roles' or 'policies' are used in the
# property_protection_file.
# The default value for property_protection_rule_format is 'roles'.
#property_protection_rule_format=roles

# This value sets what strategy will be used to determine the image location
# order. Currently two strategies are packaged with Glance 'location_order'
# and 'store_type'.
#location_strategy=location_order


# Public url to use for versions endpoint. The default is None,
# which will use the request's host_url attribute to populate the URL base.
# If Glance is operating behind a proxy, you will want to change this to
# represent the proxy's URL.
#public_endpoint=<None>

# http_keepalive option. If False, server will return the header
# "Connection: close", If True, server will return "Connection: Keep-Alive"
# in its responses. In order to close the client socket connection
# explicitly after the response is sent and read successfully by the client,
# you simply have to set this option to False when you create a wsgi server.
#http_keepalive=True

# ================= Syslog Options ============================

# Send logs to syslog (/dev/log) instead of to file specified
# by `log_file`
#use_syslog=False

# Facility to use. If unset defaults to LOG_USER.
#syslog_log_facility=LOG_LOCAL0

# ================= SSL Options ===============================

# Certificate file to use when starting API server securely
#cert_file=/path/to/certfile

# Private key file to use when starting API server securely
#key_file=/path/to/keyfile

# CA certificate file to use to verify connecting clients
#ca_file=/path/to/cafile

# ================= Security Options ==========================

# AES key for encrypting store 'location' metadata, including
# -- if used -- Swift or S3 credentials
# Should be set to a random string of length 16, 24 or 32 bytes
#metadata_encryption_key=<16, 24 or 32 char registry metadata key>


# Digest algorithm which will be used for digital signature, the default is
# sha1 in Kilo for a smooth upgrade process, and it will be updated with
# sha256 in next release(L). Use command
# "openssl list-message-digest-algorithms" to get the available algorithms
# supported by the version of OpenSSL on the platform. Examples are 'sha1',
# 'sha256', 'sha512', etc.
#digest_algorithm=sha1

# ============ Registry Options ===============================

# Address to find the registry server
#registry_host=0.0.0.0

# Port the registry server is listening on
#registry_port=9191

# What protocol to use when connecting to the registry server?
# Set to https for secure HTTP communication
#registry_client_protocol=http

# The path to the key file to use in SSL connections to the
# registry server, if any. Alternately, you may set the
# GLANCE_CLIENT_KEY_FILE environ variable to a filepath of the key file
#registry_client_key_file=/path/to/key/file

# The path to the cert file to use in SSL connections to the
# registry server, if any. Alternately, you may set the
# GLANCE_CLIENT_CERT_FILE environ variable to a filepath of the cert file
#registry_client_cert_file=/path/to/cert/file

# The path to the certifying authority cert file to use in SSL connections
# to the registry server, if any. Alternately, you may set the
# GLANCE_CLIENT_CA_FILE environ variable to a filepath of the CA cert file
#registry_client_ca_file=/path/to/ca/file

# When using SSL in connections to the registry server, do not require
# validation via a certifying authority. This is the registry's equivalent of
# specifying --insecure on the command line using glanceclient for the API
# Default: False
#registry_client_insecure=False

# The period of time, in seconds, that the API server will wait for a registry
# request to complete. A value of '0' implies no timeout.
# Default: 600
#registry_client_timeout=600

# Enable DEBUG log messages from sqlalchemy which prints every database
# query and response.
# Default: False
#sqlalchemy_debug=True

# Pass the user's token through for API requests to the registry.
# Default: True
#use_user_token=True

# If 'use_user_token' is not in effect then admin credentials
# can be specified. Requests to the registry on behalf of
# the API will use these credentials.
# Admin user name
#admin_user=%SERVICE_USER%
# Admin password
#admin_password=%SERVICE_PASSWORD%
# Admin tenant name
#admin_tenant_name=%SERVICE_TENANT_NAME%
# Keystone endpoint
#auth_url=None
# Keystone region
#auth_region=None
# Auth strategy
#auth_strategy=keystone

# ============ Notification System Options =====================

# Driver or drivers to handle sending notifications. Set to
# 'messaging' to send notifications to a message queue.
notification_driver = noop

# Default publisher_id for outgoing notifications.
# default_publisher_id = image.localhost

# List of disabled notifications. A notification can be given either as a
# notification type to disable a single event, or as a notification group
# prefix to disable all events within a group.
# Example: if this config option is set to
# ["image.create", "metadef_namespace"], then "image.create" notification will
# not be sent after image is created and none of the notifications for
# metadefinition namespaces will be sent.
# disabled_notifications = []

# Messaging driver used for 'messaging' notifications driver
# rpc_backend = 'rabbit'

# Configuration options if sending notifications via rabbitmq (these are
# the defaults)
#rabbit_host=localhost
#rabbit_port=5672
#rabbit_use_ssl=false
#rabbit_userid=guest
#rabbit_password=guest
#rabbit_virtual_host=/
#rabbit_notification_exchange=glance
#rabbit_notification_topic=notifications
#rabbit_durable_queues=False

# Configuration options if sending notifications via Qpid (these are
# the defaults)
#qpid_notification_exchange=glance
#qpid_notification_topic=notifications
#qpid_hostname=localhost
#qpid_port=5672
#qpid_username=
#qpid_password=
#qpid_sasl_mechanisms=
#qpid_reconnect_timeout=0
#qpid_reconnect_limit=0
#qpid_reconnect_interval_min=0
#qpid_reconnect_interval_max=0
#qpid_reconnect_interval=0
#qpid_heartbeat=5
# Set to 'ssl' to enable SSL
#qpid_protocol=tcp
#qpid_tcp_nodelay=True

# ============ Delayed Delete Options =============================

# Turn on/off delayed delete
#delayed_delete=False

# Delayed delete time in seconds
#scrub_time=43200

# Directory that the scrubber will use to remind itself of what to delete
# Make sure this is also set in glance-scrubber.conf
#scrubber_datadir=/var/lib/glance/scrubber

# =============== Quota Options ==================================

# The maximum number of image members allowed per image
#image_member_quota=128

# The maximum number of image properties allowed per image
#image_property_quota=128

# The maximum number of tags allowed per image
#image_tag_quota=128

# The maximum number of locations allowed per image
#image_location_quota=10

# Set a system wide quota for every user.  This value is the total number
# of bytes that a user can use across all storage systems.  A value of
# 0 means unlimited.
#user_storage_quota=0

# =============== Image Cache Options =============================

# Base directory that the Image Cache uses
#image_cache_dir=/var/lib/glance/image-cache/

# =============== Policy Options ==================================

[oslo_policy]
# The JSON file that defines policies.
# Deprecated group/name - [DEFAULT]/policy_file
#policy_file=policy.json

# Default rule. Enforced when a requested rule is not found.
# Deprecated group/name - [DEFAULT]/policy_default_rule
#policy_default_rule=default

# Directories where policy configuration files are stored.
# They can be relative to any directory in the search path
# defined by the config_dir option, or absolute paths.
# The file defined by policy_file must exist for these
# directories to be searched.
# Deprecated group/name - [DEFAULT]/policy_dirs
#policy_dirs=policy.d

# =============== Database Options =================================

[database]
# The file name to use with SQLite (string value)
#sqlite_db=oslo.sqlite

# If True, SQLite uses synchronous mode (boolean value)
#sqlite_synchronous=True

# The backend to use for db (string value)
# Deprecated group/name - [DEFAULT]/db_backend
#backend=sqlalchemy

# The SQLAlchemy connection string used to connect to the
# database (string value)
# Deprecated group/name - [DEFAULT]/sql_connection
# Deprecated group/name - [DATABASE]/sql_connection
# Deprecated group/name - [sql]/connection
connection = mysql://{{database.user}}:{{database.password}}@{{database.host}}/{{database.name}}

# The SQL mode to be used for MySQL sessions. This option,
# including the default, overrides any server-set SQL mode. To
# use whatever SQL mode is set by the server configuration,
# set this to no value. Example: mysql_sql_mode= (string
# value)
#mysql_sql_mode=TRADITIONAL

# Timeout before idle sql connections are reaped (integer
# value)
# Deprecated group/name - [DEFAULT]/sql_idle_timeout
# Deprecated group/name - [DATABASE]/sql_idle_timeout
# Deprecated group/name - [sql]/idle_timeout
#idle_timeout=3600

# Minimum number of SQL connections to keep open in a pool
# (integer value)
# Deprecated group/name - [DEFAULT]/sql_min_pool_size
# Deprecated group/name - [DATABASE]/sql_min_pool_size
#min_pool_size=1

# Maximum number of SQL connections to keep open in a pool
# (integer value)
# Deprecated group/name - [DEFAULT]/sql_max_pool_size
# Deprecated group/name - [DATABASE]/sql_max_pool_size
#max_pool_size=<None>

# Maximum db connection retries during startup. (setting -1
# implies an infinite retry count) (integer value)
# Deprecated group/name - [DEFAULT]/sql_max_retries
# Deprecated group/name - [DATABASE]/sql_max_retries
#max_retries=10

# Interval between retries of opening a sql connection
# (integer value)
# Deprecated group/name - [DEFAULT]/sql_retry_interval
# Deprecated group/name - [DATABASE]/reconnect_interval
#retry_interval=10

# If set, use this value for max_overflow with sqlalchemy
# (integer value)
# Deprecated group/name - [DEFAULT]/sql_max_overflow
# Deprecated group/name - [DATABASE]/sqlalchemy_max_overflow
#max_overflow=<None>

# Verbosity of SQL debugging information. 0=None,
# 100=Everything (integer value)
# Deprecated group/name - [DEFAULT]/sql_connection_debug
#connection_debug=0

# Add python stack traces to SQL as comment strings (boolean
# value)
# Deprecated group/name - [DEFAULT]/sql_connection_trace
#connection_trace=False

# If set, use this value for pool_timeout with sqlalchemy
# (integer value)
# Deprecated group/name - [DATABASE]/sqlalchemy_pool_timeout
#pool_timeout=<None>

# Enable the experimental use of database reconnect on
# connection lost (boolean value)
#use_db_reconnect=False

# seconds between db connection retries (integer value)
#db_retry_interval=1

# Whether to increase interval between db connection retries,
# up to db_max_retry_interval (boolean value)
#db_inc_retry_interval=True

# max seconds between db connection retries, if
# db_inc_retry_interval is enabled (integer value)
#db_max_retry_interval=10

# maximum db connection retries before error is raised.
# (setting -1 implies an infinite retry count) (integer value)
#db_max_retries=20

[oslo_concurrency]

# Enables or disables inter-process locks. (boolean value)
# Deprecated group/name - [DEFAULT]/disable_process_locking
#disable_process_locking=false

# Directory to use for lock files.  For security, the specified
# directory should only be writable by the user running the processes
# that need locking. It could be read from environment variable
# OSLO_LOCK_PATH. This setting needs to be the same for both
# glance-scrubber and glance-api service. Default to a temp directory.
# Deprecated group/name - [DEFAULT]/lock_path (string value)
#lock_path=/tmp

[keystone_authtoken]
auth_uri = http://{{controller}}:5000
auth_url = http://{{controller}}:35357

auth_plugin = password
project_domain_id = default
user_domain_id = default
project_name = service
username = {{keystone.user}}
password = {{keystone.password}}

#admin_tenant_name=%SERVICE_TENANT_NAME%
#admin_user=%SERVICE_USER%
#admin_password=%SERVICE_PASSWORD%
#revocation_cache_time=10

[paste_deploy]
# Name of the paste configuration file that defines the available pipelines
#config_file=/usr/share/glance/glance-api-dist-paste.ini

# Partial name of a pipeline in your paste configuration file with the
# service name removed. For example, if your paste section name is
# [pipeline:glance-api-keystone], you would configure the flavor below
# as 'keystone'.
flavor=keystone

[store_type_location_strategy]
# The scheme list to use to get store preference order. The scheme must be
# registered by one of the stores defined by the 'stores' config option.
# This option will be applied when you using 'store_type' option as image
# location strategy defined by the 'location_strategy' config option.
#store_type_preference =

[profiler]
# If False fully disable profiling feature.
#enabled=False

# If False doesn't trace SQL requests.
#trace_sqlalchemy=False

[task]
# ================= Glance Tasks Options ============================

# Specifies how long (in hours) a task is supposed to live in the tasks DB
# after succeeding or failing before getting soft-deleted.
# The default value for task_time_to_live is 48 hours.
# task_time_to_live = 48

# Specifies which task executor to be used to run the task scripts.
# The default value for task_executor is taskflow.
# task_executor = taskflow

# Work dir for asynchronous task operations.  The directory set here
# will be used to operate over images - normally before they are
# imported in the destination store. When providing work dir, make sure
# enough space is provided for concurrent tasks to run efficiently
# without running out of space. A rough estimation can be done by
# multiplying the number of `max_workers` - or the N of workers running
# - by an average image size (e.g 500MB). The image size estimation
# should be done based on the average size in your deployment. Note that
# depending on the tasks running you may need to multiply this number by
# some factor depending on what the task does. For example, you may want
# to double the available size if image conversion is enabled. All this
# being said, remember these are just estimations and you should do them
# based on the worst case scenario and be prepared to act in case they
# were wrong.
# work_dir=None

# Specifies the maximum number of eventlet threads which can be spun up by
# the eventlet based task executor to perform execution of Glance tasks.
# DEPRECATED: Use [taskflow_executor]/max_workers instead.
# eventlet_executor_pool_size = 1000

[taskflow_executor]
# The mode in which the engine will run. Can be 'default', 'serial',
# 'parallel' or 'worker-based'
#engine_mode=serial

# The number of parallel activities executed at the same time by
# the engine. The value can be greater than one when the engine mode is
# 'parallel' or 'worker-based', otherwise this value will be ignored.
#max_workers=10

[glance_store]
# List of which store classes and store class locations are
# currently known to glance at startup.
# Deprecated group/name - [DEFAULT]/known_stores
# Existing but disabled stores:
#      glance.store.rbd.Store,
#      glance.store.s3.Store,
#      glance.store.swift.Store,
#      glance.store.sheepdog.Store,
#      glance.store.cinder.Store,
#      glance.store.gridfs.Store,
#      glance.store.vmware_datastore.Store,
#stores=glance.store.filesystem.Store,
#         glance.store.http.Store

# Which backend scheme should Glance use by default is not specified
# in a request to add a new image to Glance? Known schemes are determined
# by the stores option.
# Deprecated group/name - [DEFAULT]/default_store
# Default: 'file'
default_store=file

# ============ Filesystem Store Options ========================

# Directory that the Filesystem backend store
# writes image data to
filesystem_store_datadir=/var/lib/glance/images/

# A list of directories where image data can be stored.
# This option may be specified multiple times for specifying multiple store
# directories. Either one of filesystem_store_datadirs or
# filesystem_store_datadir option is required. A priority number may be given
# after each directory entry, separated by a ":".
# When adding an image, the highest priority directory will be selected, unless
# there is not enough space available in cases where the image size is already
# known. If no priority is given, it is assumed to be zero and the directory
# will be considered for selection last. If multiple directories have the same
# priority, then the one with the most free space available is selected.
# If same store is specified multiple times then BadStoreConfiguration
# exception will be raised.
#filesystem_store_datadirs=/var/lib/glance/images/:1

# A path to a JSON file that contains metadata describing the storage
# system.  When show_multiple_locations is True the information in this
# file will be returned with any location that is contained in this
# store.
#filesystem_store_metadata_file=None

# ============ Swift Store Options =============================

# Version of the authentication service to use
# Valid versions are '2' for keystone and '1' for swauth and rackspace
#swift_store_auth_version=2

# Address where the Swift authentication service lives
# Valid schemes are 'http://' and 'https://'
# If no scheme specified,  default to 'https://'
# For swauth, use something like '127.0.0.1:8080/v1.0/'
#swift_store_auth_address=127.0.0.1:5000/v2.0/

# User to authenticate against the Swift authentication service
# If you use Swift authentication service, set it to 'account':'user'
# where 'account' is a Swift storage account and 'user'
# is a user in that account
#swift_store_user=jdoe:jdoe

# Auth key for the user authenticating against the
# Swift authentication service
#swift_store_key=a86850deb2742ec3cb41518e26aa2d89

# Container within the account that the account should use
# for storing images in Swift
#swift_store_container=glance

# Do we create the container if it does not exist?
#swift_store_create_container_on_put=False

# What size, in MB, should Glance start chunking image files
# and do a large object manifest in Swift? By default, this is
# the maximum object size in Swift, which is 5GB
#swift_store_large_object_size=5120

# swift_store_config_file = glance-swift.conf
# This file contains references for each of the configured
# Swift accounts/backing stores. If used, this option can prevent
# credentials being stored in the database. Using Swift references
# is disabled if this config is left blank.

# The reference to the default Swift parameters to use for adding new images.
# default_swift_reference = 'ref1'

# When doing a large object manifest, what size, in MB, should
# Glance write chunks to Swift? This amount of data is written
# to a temporary disk buffer during the process of chunking
# the image file, and the default is 200MB
#swift_store_large_object_chunk_size=200

# If set, the configured endpoint will be used. If None, the storage URL
# from the auth response will be used. The location of an object is
# obtained by appending the container and object to the configured URL.
#
# swift_store_endpoint = https://www.example.com/v1/not_a_container
#swift_store_endpoint =

# If set to True enables multi-tenant storage mode which causes Glance images
# to be stored in tenant specific Swift accounts.
#swift_store_multi_tenant=False

# If set to an integer value between 1 and 32, a single-tenant store will
# use multiple containers to store images. If set to the default value of 0,
# only a single container will be used. Multi-tenant stores are not affected
# by this option. The max number of containers that will be used to store
# images is approximately 16^N where N is the value of this option. Discuss
# the impact of this with your swift deployment team, as this option is only
# beneficial in the largest of deployments where swift rate limiting can lead
# to unwanted throttling on a single container.
#swift_store_multiple_containers_seed=0

# A list of swift ACL strings that will be applied as both read and
# write ACLs to the containers created by Glance in multi-tenant
# mode. This grants the specified tenants/users read and write access
# to all newly created image objects. The standard swift ACL string
# formats are allowed, including:
# <tenant_id>:<username>
# <tenant_name>:<username>
# *:<username>
# Multiple ACLs can be combined using a comma separated list, for
# example: swift_store_admin_tenants = service:glance,*:admin
#swift_store_admin_tenants =

# The region of the swift endpoint to be used for single tenant. This setting
# is only necessary if the tenant has multiple swift endpoints.
#swift_store_region =

# If set to False, disables SSL layer compression of https swift requests.
# Setting to 'False' may improve performance for images which are already
# in a compressed format, eg qcow2. If set to True, enables SSL layer
# compression (provided it is supported by the target swift proxy).
#swift_store_ssl_compression=True

# The number of times a Swift download will be retried before the
# request fails
#swift_store_retry_get_count=0

# Bypass SSL verification for Swift
#swift_store_auth_insecure=False

# The path to a CA certificate bundle file to use for SSL verification when
# communicating with Swift.
#swift_store_cacert =

# ============ S3 Store Options =============================

# Address where the S3 authentication service lives
# Valid schemes are 'http://' and 'https://'
# If no scheme specified,  default to 'http://'
#s3_store_host=s3.amazonaws.com

# User to authenticate against the S3 authentication service
#s3_store_access_key=<20-charAWSaccesskey>

# Auth key for the user authenticating against the
# S3 authentication service
#s3_store_secret_key=<40-charAWSsecretkey>

# Container within the account that the account should use
# for storing images in S3. Note that S3 has a flat namespace,
# so you need a unique bucket name for your glance images. An
# easy way to do this is append your AWS access key to "glance".
# S3 buckets in AWS *must* be lowercased, so remember to lowercase
# your AWS access key if you use it in your bucket name below!
#s3_store_bucket=<lowercased20-charawsaccesskey>glance

# Do we create the bucket if it does not exist?
#s3_store_create_bucket_on_put=False

# When sending images to S3, the data will first be written to a
# temporary buffer on disk. By default the platform's temporary directory
# will be used. If required, an alternative directory can be specified here.
#s3_store_object_buffer_dir=/path/to/dir

# When forming a bucket url, boto will either set the bucket name as the
# subdomain or as the first token of the path. Amazon's S3 service will
# accept it as the subdomain, but Swift's S3 middleware requires it be
# in the path. Set this to 'path' or 'subdomain' - defaults to 'subdomain'.
#s3_store_bucket_url_format=subdomain

# Size, in MB, should S3 start chunking image files
# and do a multipart upload in S3. The default is 100MB.
#s3_store_large_object_size=100

# Multipart upload part size, in MB, should S3 use when uploading
# parts. The size must be greater than or equal to
# 5MB. The default is 10MB.
#s3_store_large_object_chunk_size=10

# The number of thread pools to perform a multipart upload
# in S3. The default is 10.
#s3_store_thread_pools=10

# ============ RBD Store Options =============================

# Ceph configuration file path
# If using cephx authentication, this file should
# include a reference to the right keyring
# in a client.<USER> section
#rbd_store_ceph_conf=/etc/ceph/ceph.conf

# RADOS user to authenticate as (only applicable if using cephx)
# If <None>, a default will be chosen based on the client. section
# in rbd_store_ceph_conf
#rbd_store_user=<None>

# RADOS pool in which images are stored
#rbd_store_pool=images

# RADOS images will be chunked into objects of this size (in megabytes).
# For best performance, this should be a power of two
#rbd_store_chunk_size=8

# ============ Sheepdog Store Options =============================

#sheepdog_store_address=localhost

#sheepdog_store_port=7000

# Images will be chunked into objects of this size (in megabytes).
# For best performance, this should be a power of two
#sheepdog_store_chunk_size=64

# ============ Cinder Store Options ===============================

# Info to match when looking for cinder in the service catalog
# Format is : separated values of the form:
# <service_type>:<service_name>:<endpoint_type> (string value)
#cinder_catalog_info=volume:cinder:publicURL

# Override service catalog lookup with template for cinder endpoint
# e.g. http://localhost:8776/v1/%(project_id)s (string value)
#cinder_endpoint_template=<None>

# Region name of this node (string value)
#os_region_name=<None>

# Location of ca certicates file to use for cinder client requests
# (string value)
#cinder_ca_certificates_file=<None>

# Number of cinderclient retries on failed http calls (integer value)
#cinder_http_retries=3

# Allow to perform insecure SSL requests to cinder (boolean value)
#cinder_api_insecure=False

# ============ VMware Datastore Store Options =====================

# ESX/ESXi or vCenter Server target system.
# The server value can be an IP address or a DNS name
# e.g. 127.0.0.1, 127.0.0.1:443, www.vmware-infra.com
#vmware_server_host=<None>

# Server username (string value)
#vmware_server_username=<None>

# Server password (string value)
#vmware_server_password=<None>

# Inventory path to a datacenter (string value)
# Value optional when vmware_server_ip is an ESX/ESXi host: if specified
# should be `ha-datacenter`.
# Deprecated in favor of vmware_datastores.
#vmware_datacenter_path=<None>

# Datastore associated with the datacenter (string value)
# Deprecated in favor of vmware_datastores.
#vmware_datastore_name=<None>

# A list of datastores where the image can be stored.
# This option may be specified multiple times for specifying multiple
# datastores. Either one of vmware_datastore_name or vmware_datastores is
# required. The datastore name should be specified after its datacenter
# path, separated by ":". An optional weight may be given after the datastore
# name, separated again by ":". Thus, the required format becomes
# <datacenter_path>:<datastore_name>:<optional_weight>.
# When adding an image, the datastore with highest weight will be selected,
# unless there is not enough free space available in cases where the image size
# is already known. If no weight is given, it is assumed to be zero and the
# directory will be considered for selection last. If multiple datastores have
# the same weight, then the one with the most free space available is selected.
#vmware_datastores=<None>

# The number of times we retry on failures
# e.g., socket error, etc (integer value)
#vmware_api_retry_count=10

# The interval used for polling remote tasks
# invoked on VMware ESX/VC server in seconds (integer value)
#vmware_task_poll_interval=5

# Absolute path of the folder containing the images in the datastore
# (string value)
#vmware_store_image_dir=/openstack_glance

# Allow to perform insecure SSL requests to the target system (boolean value)
#vmware_api_insecure=False