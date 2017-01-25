.class public interface abstract Lorg/apache/ignite/events/EventType;
.super Ljava/lang/Object;
.source "EventType.java"


# static fields
.field public static final EVTS_ALL:[I

.field public static final EVTS_ALL_MINUS_METRIC_UPDATE:[I

.field public static final EVTS_CACHE:[I

.field public static final EVTS_CACHE_LIFECYCLE:[I

.field public static final EVTS_CACHE_QUERY:[I

.field public static final EVTS_CACHE_REBALANCE:[I

.field public static final EVTS_CHECKPOINT:[I

.field public static final EVTS_DEPLOYMENT:[I

.field public static final EVTS_DISCOVERY:[I

.field public static final EVTS_DISCOVERY_ALL:[I

.field public static final EVTS_ERROR:[I

.field public static final EVTS_IGFS:[I

.field public static final EVTS_JOB_EXECUTION:[I

.field public static final EVTS_SWAPSPACE:[I

.field public static final EVTS_TASK_EXECUTION:[I

.field public static final EVT_CACHE_ENTRY_CREATED:I = 0x3c

.field public static final EVT_CACHE_ENTRY_DESTROYED:I = 0x3d

.field public static final EVT_CACHE_ENTRY_EVICTED:I = 0x3e

.field public static final EVT_CACHE_NODES_LEFT:I = 0x64

.field public static final EVT_CACHE_OBJECT_EXPIRED:I = 0x46

.field public static final EVT_CACHE_OBJECT_FROM_OFFHEAP:I = 0x4d

.field public static final EVT_CACHE_OBJECT_LOCKED:I = 0x42

.field public static final EVT_CACHE_OBJECT_PUT:I = 0x3f

.field public static final EVT_CACHE_OBJECT_READ:I = 0x40

.field public static final EVT_CACHE_OBJECT_REMOVED:I = 0x41

.field public static final EVT_CACHE_OBJECT_SWAPPED:I = 0x44

.field public static final EVT_CACHE_OBJECT_TO_OFFHEAP:I = 0x4c

.field public static final EVT_CACHE_OBJECT_UNLOCKED:I = 0x43

.field public static final EVT_CACHE_OBJECT_UNSWAPPED:I = 0x45

.field public static final EVT_CACHE_QUERY_EXECUTED:I = 0x60

.field public static final EVT_CACHE_QUERY_OBJECT_READ:I = 0x61

.field public static final EVT_CACHE_REBALANCE_OBJECT_LOADED:I = 0x54

.field public static final EVT_CACHE_REBALANCE_OBJECT_UNLOADED:I = 0x55

.field public static final EVT_CACHE_REBALANCE_PART_DATA_LOST:I = 0x56

.field public static final EVT_CACHE_REBALANCE_PART_LOADED:I = 0x52

.field public static final EVT_CACHE_REBALANCE_PART_UNLOADED:I = 0x53

.field public static final EVT_CACHE_REBALANCE_STARTED:I = 0x50

.field public static final EVT_CACHE_REBALANCE_STOPPED:I = 0x51

.field public static final EVT_CACHE_STARTED:I = 0x62

.field public static final EVT_CACHE_STOPPED:I = 0x63

.field public static final EVT_CHECKPOINT_LOADED:I = 0x2

.field public static final EVT_CHECKPOINT_REMOVED:I = 0x3

.field public static final EVT_CHECKPOINT_SAVED:I = 0x1

.field public static final EVT_CLASS_DEPLOYED:I = 0x1e

.field public static final EVT_CLASS_DEPLOY_FAILED:I = 0x20

.field public static final EVT_CLASS_UNDEPLOYED:I = 0x1f

.field public static final EVT_CLIENT_NODE_DISCONNECTED:I = 0x10

.field public static final EVT_CLIENT_NODE_RECONNECTED:I = 0x11

.field public static final EVT_IGFS_DIR_CREATED:I = 0x7c

.field public static final EVT_IGFS_DIR_DELETED:I = 0x7e

.field public static final EVT_IGFS_DIR_RENAMED:I = 0x7d

.field public static final EVT_IGFS_FILE_CLOSED_READ:I = 0x7b

.field public static final EVT_IGFS_FILE_CLOSED_WRITE:I = 0x7a

.field public static final EVT_IGFS_FILE_CREATED:I = 0x74

.field public static final EVT_IGFS_FILE_DELETED:I = 0x76

.field public static final EVT_IGFS_FILE_OPENED_READ:I = 0x77

.field public static final EVT_IGFS_FILE_OPENED_WRITE:I = 0x78

.field public static final EVT_IGFS_FILE_PURGED:I = 0x7f

.field public static final EVT_IGFS_FILE_RENAMED:I = 0x75

.field public static final EVT_IGFS_META_UPDATED:I = 0x79

.field public static final EVT_JOB_CANCELLED:I = 0x32

.field public static final EVT_JOB_FAILED:I = 0x30

.field public static final EVT_JOB_FAILED_OVER:I = 0x2b

.field public static final EVT_JOB_FINISHED:I = 0x2d

.field public static final EVT_JOB_MAPPED:I = 0x28

.field public static final EVT_JOB_QUEUED:I = 0x31

.field public static final EVT_JOB_REJECTED:I = 0x2f

.field public static final EVT_JOB_RESULTED:I = 0x29

.field public static final EVT_JOB_STARTED:I = 0x2c

.field public static final EVT_JOB_TIMEDOUT:I = 0x2e

.field public static final EVT_NODE_FAILED:I = 0xc

.field public static final EVT_NODE_JOINED:I = 0xa

.field public static final EVT_NODE_LEFT:I = 0xb

.field public static final EVT_NODE_METRICS_UPDATED:I = 0xd

.field public static final EVT_NODE_SEGMENTED:I = 0xe

.field public static final EVT_SWAP_SPACE_CLEARED:I = 0x4a

.field public static final EVT_SWAP_SPACE_DATA_EVICTED:I = 0x4b

.field public static final EVT_SWAP_SPACE_DATA_READ:I = 0x47

.field public static final EVT_SWAP_SPACE_DATA_REMOVED:I = 0x49

.field public static final EVT_SWAP_SPACE_DATA_STORED:I = 0x48

.field public static final EVT_TASK_DEPLOYED:I = 0x21

.field public static final EVT_TASK_DEPLOY_FAILED:I = 0x23

.field public static final EVT_TASK_FAILED:I = 0x16

.field public static final EVT_TASK_FINISHED:I = 0x15

.field public static final EVT_TASK_REDUCED:I = 0x19

.field public static final EVT_TASK_SESSION_ATTR_SET:I = 0x18

.field public static final EVT_TASK_STARTED:I = 0x14

.field public static final EVT_TASK_TIMEDOUT:I = 0x17

.field public static final EVT_TASK_UNDEPLOYED:I = 0x22


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 869
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_CHECKPOINT:[I

    .line 882
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_DEPLOYMENT:[I

    .line 895
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_ERROR:[I

    .line 923
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_DISCOVERY:[I

    .line 939
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_DISCOVERY_ALL:[I

    .line 956
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_JOB_EXECUTION:[I

    .line 976
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_TASK_EXECUTION:[I

    .line 990
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_CACHE:[I

    .line 1008
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_CACHE_REBALANCE:[I

    .line 1023
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_CACHE_LIFECYCLE:[I

    .line 1034
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_CACHE_QUERY:[I

    .line 1046
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_SWAPSPACE:[I

    .line 1061
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_IGFS:[I

    .line 1079
    new-array v0, v2, [I

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEvents([I)[I

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    .line 1084
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd

    aput v1, v0, v2

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEvents([I)[I

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/events/EventType;->EVTS_ALL_MINUS_METRIC_UPDATE:[I

    return-void

    .line 869
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 882
    :array_1
    .array-data 4
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
    .end array-data

    .line 895
    :array_2
    .array-data 4
        0x2e
        0x30
        0x2b
        0x2f
        0x32
        0x17
        0x16
        0x20
        0x23
        0x21
        0x22
        0x50
        0x51
    .end array-data

    .line 923
    :array_3
    .array-data 4
        0xa
        0xb
        0xc
        0xe
        0x10
        0x11
    .end array-data

    .line 939
    :array_4
    .array-data 4
        0xa
        0xb
        0xc
        0xe
        0xd
        0x10
        0x11
    .end array-data

    .line 956
    :array_5
    .array-data 4
        0x28
        0x29
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
    .end array-data

    .line 976
    :array_6
    .array-data 4
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
    .end array-data

    .line 990
    :array_7
    .array-data 4
        0x3c
        0x3d
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
    .end array-data

    .line 1008
    :array_8
    .array-data 4
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
    .end array-data

    .line 1023
    :array_9
    .array-data 4
        0x62
        0x63
        0x64
    .end array-data

    .line 1034
    :array_a
    .array-data 4
        0x60
        0x61
    .end array-data

    .line 1046
    :array_b
    .array-data 4
        0x4a
        0x49
        0x47
        0x48
        0x4b
    .end array-data

    .line 1061
    :array_c
    .array-data 4
        0x74
        0x75
        0x76
        0x77
        0x78
        0x7a
        0x7b
        0x7f
        0x79
        0x7c
        0x7d
        0x7e
    .end array-data
.end method
