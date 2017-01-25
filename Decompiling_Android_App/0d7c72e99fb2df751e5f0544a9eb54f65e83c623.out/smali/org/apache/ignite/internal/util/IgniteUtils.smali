.class public abstract Lorg/apache/ignite/internal/util/IgniteUtils;
.super Ljava/lang/Object;
.source "IgniteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/IgniteUtils$DeploymentHostnameVerifier;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BUF_SIZE:I = 0x1000

.field private static final BYTE_ARRAY_DATA_OFFSET:I

.field private static final CTOR_FACTORY:Ljava/lang/reflect/Method;

.field private static final DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

.field public static final DFLT_USER_VERSION:Ljava/lang/String; = "0"

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_LONGS:[J

.field private static final GRID_EVTS:[I

.field private static final GRID_EVT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTPS_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final IGNITE_HEADER:[B

.field public static final IGNITE_LOG_DIR:Ljava/lang/String;

.field public static final IGNITE_WORK_DIR:Ljava/lang/String;

.field public static final JMX_DOMAIN:Ljava/lang/String;

.field private static final LONG_DATE_FMT:Ljava/text/SimpleDateFormat;

.field public static final MAC_INVALID_ARG_MSG:Ljava/lang/String; = "On MAC OS you may have too many file descriptors open (simple restart usually solves the issue)"

.field private static final MASK:I = 0xf

.field private static final NL:Ljava/lang/String;

.field private static final OBJECT_CTOR:Ljava/lang/reflect/Constructor;

.field private static final SHORT_DATE_FMT:Ljava/text/SimpleDateFormat;

.field private static final SUN_REFLECT_FACTORY:Ljava/lang/Object;

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_BYTE_ARR_CP:Z

.field private static final boxedClsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static volatile cachedLocalAddr:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final classCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field static volatile curTimeMillis:J

.field private static final exceptionConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/C1",
            "<",
            "Lorg/apache/ignite/IgniteCheckedException;",
            "Lorg/apache/ignite/IgniteException;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridTuple",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final gridClassLoader:Ljava/lang/ClassLoader;

.field static gridCnt:I

.field private static volatile hasShmem:Ljava/lang/Boolean;

.field private static volatile igniteWork:Ljava/lang/String;

.field private static javaRtName:Ljava/lang/String;

.field private static javaRtVer:Ljava/lang/String;

.field private static jdkName:Ljava/lang/String;

.field private static jdkStr:Ljava/lang/String;

.field private static jdkVendor:Ljava/lang/String;

.field private static jdkVer:Ljava/lang/String;

.field private static jvmImplName:Ljava/lang/String;

.field private static jvmImplVendor:Ljava/lang/String;

.field private static jvmImplVer:Ljava/lang/String;

.field private static jvmSpecName:Ljava/lang/String;

.field private static linux:Z

.field private static locHost:Ljava/net/InetAddress;

.field private static mac:Z

.field static final mux:Ljava/lang/Object;

.field private static netware:Z

.field private static osArch:Ljava/lang/String;

.field private static osJdkStr:Ljava/lang/String;

.field private static osName:Ljava/lang/String;

.field private static osStr:Ljava/lang/String;

.field private static osVer:Ljava/lang/String;

.field private static final p2pFields:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final primitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static solaris:Z

.field private static sparc:Z

.field private static timer:Ljava/lang/Thread;

.field private static unix:Z

.field private static unknownWin:Z

.field private static win2003:Z

.field private static win2008:Z

.field private static win2k:Z

.field private static win7:Z

.field private static win8:Z

.field private static win81:Z

.field private static win95:Z

.field private static win98:Z

.field private static winNt:Z

.field private static winVista:Z

.field private static winXp:Z

.field private static x86:Z


# direct methods
.method static constructor <clinit>()V
    .locals 46

    .prologue
    .line 84
    const-class v39, Lorg/apache/ignite/internal/util/IgniteUtils;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v39

    if-nez v39, :cond_3

    const/16 v39, 0x1

    :goto_0
    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    .line 87
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 90
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->unsafeByteArrayCopyAvailable()Z

    move-result v39

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE_BYTE_ARR_CP:Z

    .line 93
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-class v40, [B

    invoke-virtual/range {v39 .. v40}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v39

    sput v39, Lorg/apache/ignite/internal/util/IgniteUtils;->BYTE_ARRAY_DATA_OFFSET:I

    .line 105
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVT_NAMES:Ljava/util/Map;

    .line 111
    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->EMPTY_INTS:[I

    .line 114
    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [J

    move-object/from16 v39, v0

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->EMPTY_LONGS:[J

    .line 117
    const-string v39, "line.separator"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    .line 123
    new-instance v39, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct/range {v39 .. v39}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->p2pFields:Ljava/util/concurrent/ConcurrentMap;

    .line 238
    const-class v39, Lorg/apache/ignite/internal/util/IgniteUtils;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x0

    const-class v41, Lorg/apache/ignite/internal/util/IgniteUtils;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x2e

    const-class v43, Lorg/apache/ignite/internal/util/IgniteUtils;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2e

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->indexOf(I)I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    invoke-virtual/range {v41 .. v43}, Ljava/lang/String;->indexOf(II)I

    move-result v41

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->JMX_DOMAIN:Ljava/lang/String;

    .line 242
    const/16 v39, 0x4747

    invoke-static/range {v39 .. v39}, Lorg/apache/ignite/internal/util/IgniteUtils;->intToBytes(I)[B

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->IGNITE_HEADER:[B

    .line 251
    new-instance v39, Ljava/text/SimpleDateFormat;

    const-string v40, "MM/dd/yyyy HH:mm:ss"

    invoke-direct/range {v39 .. v40}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->LONG_DATE_FMT:Ljava/text/SimpleDateFormat;

    .line 258
    new-instance v39, Ljava/text/SimpleDateFormat;

    const-string v40, "HH:mm:ss"

    invoke-direct/range {v39 .. v40}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->SHORT_DATE_FMT:Ljava/text/SimpleDateFormat;

    .line 261
    new-instance v39, Ljava/text/SimpleDateFormat;

    const-string v40, "HH:mm:ss,SSS"

    invoke-direct/range {v39 .. v40}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sput-wide v40, Lorg/apache/ignite/internal/util/IgniteUtils;->curTimeMillis:J

    .line 270
    new-instance v39, Ljava/util/HashMap;

    const/16 v40, 0x10

    const/high16 v41, 0x3f000000    # 0.5f

    invoke-direct/range {v39 .. v41}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    .line 273
    new-instance v39, Ljava/util/HashMap;

    const/16 v40, 0x10

    const/high16 v41, 0x3f000000    # 0.5f

    invoke-direct/range {v39 .. v41}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    .line 276
    const-class v39, Lorg/apache/ignite/internal/util/IgniteUtils;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->gridClassLoader:Ljava/lang/ClassLoader;

    .line 283
    const-string v39, "IGNITE_LOG_DIR"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->IGNITE_LOG_DIR:Ljava/lang/String;

    .line 286
    const-string v39, "IGNITE_WORK_DIR"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->IGNITE_WORK_DIR:Ljava/lang/String;

    .line 295
    new-instance v39, Ljava/lang/Object;

    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->mux:Ljava/lang/Object;

    .line 305
    new-instance v39, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct/range {v39 .. v39}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->classCache:Ljava/util/concurrent/ConcurrentMap;

    .line 315
    const-string v39, "os.name"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 317
    .local v33, "osName":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    .line 320
    .local v32, "osLow":Ljava/lang/String;
    const-string/jumbo v39, "win"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_f

    .line 321
    const-string v39, "95"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 322
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win95:Z

    .line 366
    :cond_0
    :goto_1
    const-string v39, "os.arch"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 368
    .local v31, "osArch":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "archStr":Ljava/lang/String;
    const-string/jumbo v39, "x86"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_15

    .line 372
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->x86:Z

    .line 376
    :cond_1
    :goto_2
    const-string v39, "java.runtime.name"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 377
    .local v18, "javaRtName":Ljava/lang/String;
    const-string v39, "java.runtime.version"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 378
    .local v19, "javaRtVer":Ljava/lang/String;
    const-string v39, "java.specification.vendor"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 379
    .local v22, "jdkVendor":Ljava/lang/String;
    const-string v39, "java.specification.name"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 380
    .local v20, "jdkName":Ljava/lang/String;
    const-string v39, "java.specification.version"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 381
    .local v23, "jdkVer":Ljava/lang/String;
    const-string v39, "os.version"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 382
    .local v34, "osVer":Ljava/lang/String;
    const-string v39, "java.vm.specification.name"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 383
    .local v27, "jvmSpecName":Ljava/lang/String;
    const-string v39, "java.vm.version"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 384
    .local v26, "jvmImplVer":Ljava/lang/String;
    const-string v39, "java.vm.vendor"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 385
    .local v25, "jvmImplVendor":Ljava/lang/String;
    const-string v39, "java.vm.name"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 387
    .local v24, "jvmImplName":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 390
    .local v21, "jdkStr":Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->osStr:Ljava/lang/String;

    .line 391
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->osJdkStr:Ljava/lang/String;

    .line 394
    sput-object v33, Lorg/apache/ignite/internal/util/IgniteUtils;->osName:Ljava/lang/String;

    .line 395
    sput-object v20, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkName:Ljava/lang/String;

    .line 396
    sput-object v22, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkVendor:Ljava/lang/String;

    .line 397
    sput-object v23, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkVer:Ljava/lang/String;

    .line 398
    sput-object v21, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkStr:Ljava/lang/String;

    .line 399
    sput-object v34, Lorg/apache/ignite/internal/util/IgniteUtils;->osVer:Ljava/lang/String;

    .line 400
    sput-object v31, Lorg/apache/ignite/internal/util/IgniteUtils;->osArch:Ljava/lang/String;

    .line 401
    sput-object v27, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmSpecName:Ljava/lang/String;

    .line 402
    sput-object v26, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplVer:Ljava/lang/String;

    .line 403
    sput-object v25, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplVendor:Ljava/lang/String;

    .line 404
    sput-object v24, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplName:Ljava/lang/String;

    .line 405
    sput-object v18, Lorg/apache/ignite/internal/util/IgniteUtils;->javaRtName:Ljava/lang/String;

    .line 406
    sput-object v19, Lorg/apache/ignite/internal/util/IgniteUtils;->javaRtVer:Ljava/lang/String;

    .line 408
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "byte"

    sget-object v41, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "short"

    sget-object v41, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "int"

    sget-object v41, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "long"

    sget-object v41, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "float"

    sget-object v41, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "double"

    sget-object v41, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "char"

    sget-object v41, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    const-string v40, "boolean"

    sget-object v41, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Byte;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Short;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Integer;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Long;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Float;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Double;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Character;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    sget-object v40, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v41, Ljava/lang/Boolean;

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :try_start_0
    const-class v39, Ljava/lang/Object;

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->OBJECT_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    const/4 v10, 0x0

    .line 435
    .local v10, "ctorFac":Ljava/lang/reflect/Method;
    const/16 v36, 0x0

    .line 438
    .local v36, "refFac":Ljava/lang/Object;
    :try_start_1
    const-string v39, "sun.reflect.ReflectionFactory"

    invoke-static/range {v39 .. v39}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 440
    .local v37, "refFactoryCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v39, "getReflectionFactory"

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 442
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    const-string v40, "newConstructorForSerialization"

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const-class v43, Ljava/lang/Class;

    aput-object v43, v41, v42

    const/16 v42, 0x1

    const-class v43, Ljava/lang/reflect/Constructor;

    aput-object v43, v41, v42

    invoke-virtual/range {v39 .. v41}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v10

    .line 449
    .end local v36    # "refFac":Ljava/lang/Object;
    .end local v37    # "refFactoryCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    sput-object v10, Lorg/apache/ignite/internal/util/IgniteUtils;->CTOR_FACTORY:Ljava/lang/reflect/Method;

    .line 450
    sput-object v36, Lorg/apache/ignite/internal/util/IgniteUtils;->SUN_REFLECT_FACTORY:Ljava/lang/Object;

    .line 453
    const-string v39, "IGNITE_DISABLE_HOSTNAME_VERIFIER"

    invoke-static/range {v39 .. v39}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 454
    new-instance v39, Lorg/apache/ignite/internal/util/IgniteUtils$1;

    invoke-direct/range {v39 .. v39}, Lorg/apache/ignite/internal/util/IgniteUtils$1;-><init>()V

    invoke-static/range {v39 .. v39}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 462
    :cond_2
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v12, v0, [Ljava/lang/Class;

    const/16 v39, 0x0

    const-class v40, Lorg/apache/ignite/events/EventType;

    aput-object v40, v12, v39

    const/16 v39, 0x1

    const-class v40, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;

    aput-object v40, v12, v39

    .line 464
    .local v12, "evtHolderClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v7, v12

    .local v7, "arr$":[Ljava/lang/Class;
    array-length v0, v7

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v7    # "arr$":[Ljava/lang/Class;
    .end local v16    # "i$":I
    .end local v28    # "len$":I
    .local v17, "i$":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    aget-object v9, v7, v17

    .line 465
    .local v9, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .local v8, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v8

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_5
    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_17

    aget-object v15, v8, v16

    .line 466
    .local v15, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v39

    if-eqz v39, :cond_16

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v39

    sget-object v40, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 467
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v39

    const-string v40, "EVT_"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 469
    const/16 v39, 0x0

    :try_start_2
    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v38

    .line 471
    .local v38, "type":I
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVT_NAMES:Ljava/util/Map;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v41

    const-string v42, "EVT_"

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v41

    invoke-interface/range {v39 .. v41}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 474
    .local v35, "prev":Ljava/lang/String;
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_16

    if-eqz v35, :cond_16

    new-instance v39, Ljava/lang/AssertionError;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Duplicate event [type="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", name1="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", name2="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v39
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 477
    .end local v35    # "prev":Ljava/lang/String;
    .end local v38    # "type":I
    :catch_0
    move-exception v11

    .line 478
    .local v11, "e":Ljava/lang/IllegalAccessException;
    new-instance v39, Lorg/apache/ignite/IgniteException;

    move-object/from16 v0, v39

    invoke-direct {v0, v11}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v39

    .line 84
    .end local v6    # "archStr":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "ctorFac":Ljava/lang/reflect/Method;
    .end local v11    # "e":Ljava/lang/IllegalAccessException;
    .end local v12    # "evtHolderClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "i$":I
    .end local v18    # "javaRtName":Ljava/lang/String;
    .end local v19    # "javaRtVer":Ljava/lang/String;
    .end local v20    # "jdkName":Ljava/lang/String;
    .end local v21    # "jdkStr":Ljava/lang/String;
    .end local v22    # "jdkVendor":Ljava/lang/String;
    .end local v23    # "jdkVer":Ljava/lang/String;
    .end local v24    # "jvmImplName":Ljava/lang/String;
    .end local v25    # "jvmImplVendor":Ljava/lang/String;
    .end local v26    # "jvmImplVer":Ljava/lang/String;
    .end local v27    # "jvmSpecName":Ljava/lang/String;
    .end local v29    # "len$":I
    .end local v31    # "osArch":Ljava/lang/String;
    .end local v32    # "osLow":Ljava/lang/String;
    .end local v33    # "osName":Ljava/lang/String;
    .end local v34    # "osVer":Ljava/lang/String;
    :cond_3
    const/16 v39, 0x0

    goto/16 :goto_0

    .line 323
    .restart local v32    # "osLow":Ljava/lang/String;
    .restart local v33    # "osName":Ljava/lang/String;
    :cond_4
    const-string v39, "98"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 324
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win98:Z

    goto/16 :goto_1

    .line 325
    :cond_5
    const-string v39, "nt"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 326
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->winNt:Z

    goto/16 :goto_1

    .line 327
    :cond_6
    const-string v39, "2000"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 328
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win2k:Z

    goto/16 :goto_1

    .line 329
    :cond_7
    const-string/jumbo v39, "vista"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_8

    .line 330
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->winVista:Z

    goto/16 :goto_1

    .line 331
    :cond_8
    const-string/jumbo v39, "xp"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 332
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->winXp:Z

    goto/16 :goto_1

    .line 333
    :cond_9
    const-string v39, "2003"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_a

    .line 334
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win2003:Z

    goto/16 :goto_1

    .line 335
    :cond_a
    const-string v39, "2008"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_b

    .line 336
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win2008:Z

    goto/16 :goto_1

    .line 337
    :cond_b
    const-string v39, "7"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 338
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win7:Z

    goto/16 :goto_1

    .line 339
    :cond_c
    const-string v39, "8.1"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_d

    .line 340
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win81:Z

    goto/16 :goto_1

    .line 341
    :cond_d
    const-string v39, "8"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 342
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->win8:Z

    goto/16 :goto_1

    .line 344
    :cond_e
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->unknownWin:Z

    goto/16 :goto_1

    .line 346
    :cond_f
    const-string v39, "netware"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_10

    .line 347
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->netware:Z

    goto/16 :goto_1

    .line 348
    :cond_10
    const-string v39, "mac os"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_11

    .line 349
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->mac:Z

    goto/16 :goto_1

    .line 352
    :cond_11
    const/16 v39, 0x8

    move/from16 v0, v39

    new-array v7, v0, [Ljava/lang/String;

    const/16 v39, 0x0

    const-string v40, "ix"

    aput-object v40, v7, v39

    const/16 v39, 0x1

    const-string v40, "inux"

    aput-object v40, v7, v39

    const/16 v39, 0x2

    const-string v40, "olaris"

    aput-object v40, v7, v39

    const/16 v39, 0x3

    const-string/jumbo v40, "un"

    aput-object v40, v7, v39

    const/16 v39, 0x4

    const-string/jumbo v40, "ux"

    aput-object v40, v7, v39

    const/16 v39, 0x5

    const-string v40, "sco"

    aput-object v40, v7, v39

    const/16 v39, 0x6

    const-string v40, "bsd"

    aput-object v40, v7, v39

    const/16 v39, 0x7

    const-string v40, "att"

    aput-object v40, v7, v39

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_12

    aget-object v30, v7, v16

    .line 353
    .local v30, "os":Ljava/lang/CharSequence;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_13

    .line 354
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->unix:Z

    .line 360
    .end local v30    # "os":Ljava/lang/CharSequence;
    :cond_12
    const-string v39, "olaris"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_14

    .line 361
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->solaris:Z

    goto/16 :goto_1

    .line 352
    .restart local v30    # "os":Ljava/lang/CharSequence;
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 362
    .end local v30    # "os":Ljava/lang/CharSequence;
    :cond_14
    const-string v39, "inux"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 363
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->linux:Z

    goto/16 :goto_1

    .line 373
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v28    # "len$":I
    .restart local v6    # "archStr":Ljava/lang/String;
    .restart local v31    # "osArch":Ljava/lang/String;
    :cond_15
    const-string v39, "sparc"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 374
    const/16 v39, 0x1

    sput-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->sparc:Z

    goto/16 :goto_2

    .line 429
    .restart local v18    # "javaRtName":Ljava/lang/String;
    .restart local v19    # "javaRtVer":Ljava/lang/String;
    .restart local v20    # "jdkName":Ljava/lang/String;
    .restart local v21    # "jdkStr":Ljava/lang/String;
    .restart local v22    # "jdkVendor":Ljava/lang/String;
    .restart local v23    # "jdkVer":Ljava/lang/String;
    .restart local v24    # "jvmImplName":Ljava/lang/String;
    .restart local v25    # "jvmImplVendor":Ljava/lang/String;
    .restart local v26    # "jvmImplVer":Ljava/lang/String;
    .restart local v27    # "jvmSpecName":Ljava/lang/String;
    .restart local v34    # "osVer":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 430
    .local v11, "e":Ljava/lang/NoSuchMethodException;
    new-instance v39, Ljava/lang/AssertionError;

    const-string v40, "Object class does not have empty constructor (is JDK corrupted?)."

    invoke-direct/range {v39 .. v40}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v39

    invoke-static {v0, v11}, Lorg/apache/ignite/internal/util/IgniteUtils;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v39

    check-cast v39, Ljava/lang/AssertionError;

    throw v39

    .line 465
    .end local v11    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v8    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v9    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "ctorFac":Ljava/lang/reflect/Method;
    .restart local v12    # "evtHolderClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "i$":I
    .restart local v29    # "len$":I
    :cond_16
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 464
    .end local v15    # "field":Ljava/lang/reflect/Field;
    :cond_17
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto/16 :goto_4

    .line 486
    .end local v8    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "len$":I
    :cond_18
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVT_NAMES:Ljava/util/Map;

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lorg/apache/ignite/internal/util/IgniteUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    .line 489
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    invoke-static/range {v39 .. v39}, Ljava/util/Arrays;->sort([I)V

    .line 493
    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    if-eqz v39, :cond_19

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL_MINUS_METRIC_UPDATE:[I

    if-nez v39, :cond_23

    .line 495
    :cond_19
    :try_start_3
    const-class v39, Lorg/apache/ignite/events/EventType;

    const-string v40, "EVTS_ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 496
    .local v13, "f1":Ljava/lang/reflect/Field;
    const-class v39, Lorg/apache/ignite/events/EventType;

    const-string v40, "EVTS_ALL_MINUS_METRIC_UPDATE"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 498
    .local v14, "f2":Ljava/lang/reflect/Field;
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_1a

    if-nez v13, :cond_1a

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2

    .line 523
    .end local v13    # "f1":Ljava/lang/reflect/Field;
    .end local v14    # "f2":Ljava/lang/reflect/Field;
    .end local v17    # "i$":I
    :catch_2
    move-exception v11

    .line 524
    .local v11, "e":Ljava/lang/NoSuchFieldException;
    new-instance v39, Lorg/apache/ignite/IgniteException;

    move-object/from16 v0, v39

    invoke-direct {v0, v11}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v39

    .line 499
    .end local v11    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v13    # "f1":Ljava/lang/reflect/Field;
    .restart local v14    # "f2":Ljava/lang/reflect/Field;
    .restart local v17    # "i$":I
    :cond_1a
    :try_start_4
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_1b

    if-nez v14, :cond_1b

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 503
    :cond_1b
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v40, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v40

    sget-object v41, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v42

    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/apache/ignite/internal/util/IgniteUtils;->gridEvents([I)[I

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-wide/from16 v2, v42

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 504
    sget-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-object v40, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v40

    sget-object v41, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v42

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    const/16 v44, 0x0

    const/16 v45, 0xd

    aput v45, v41, v44

    invoke-static/range {v41 .. v41}, Lorg/apache/ignite/internal/util/IgniteUtils;->gridEvents([I)[I

    move-result-object v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-wide/from16 v2, v42

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 507
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_1c

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    if-nez v39, :cond_1c

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 508
    :cond_1c
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_1d

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    sget-object v40, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1d

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 510
    :cond_1d
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_1e

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL_MINUS_METRIC_UPDATE:[I

    if-nez v39, :cond_1e

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 511
    :cond_1e
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_1f

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL_MINUS_METRIC_UPDATE:[I

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    sget-object v40, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1f

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 514
    :cond_1f
    sget-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    .local v7, "arr$":[I
    array-length v0, v7

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_22

    aget v38, v7, v16

    .line 515
    .restart local v38    # "type":I
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_20

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->containsIntArray([II)Z

    move-result v39

    if-nez v39, :cond_20

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 517
    :cond_20
    const/16 v39, 0xd

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_21

    .line 518
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_21

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL_MINUS_METRIC_UPDATE:[I

    move-object/from16 v0, v39

    move/from16 v1, v38

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->containsIntArray([II)Z

    move-result v39

    if-nez v39, :cond_21

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39

    .line 514
    :cond_21
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 521
    .end local v38    # "type":I
    :cond_22
    sget-boolean v39, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v39, :cond_23

    sget-object v39, Lorg/apache/ignite/events/EventType;->EVTS_ALL_MINUS_METRIC_UPDATE:[I

    const/16 v40, 0xd

    invoke-static/range {v39 .. v40}, Lorg/apache/ignite/internal/util/IgniteUtils;->containsIntArray([II)Z

    move-result v39

    if-eqz v39, :cond_23

    new-instance v39, Ljava/lang/AssertionError;

    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    throw v39
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_2

    .line 528
    .end local v7    # "arr$":[I
    .end local v13    # "f1":Ljava/lang/reflect/Field;
    .end local v14    # "f2":Ljava/lang/reflect/Field;
    .end local v16    # "i$":I
    .end local v28    # "len$":I
    :cond_23
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->exceptionConverters()Ljava/util/Map;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v39

    sput-object v39, Lorg/apache/ignite/internal/util/IgniteUtils;->exceptionConverters:Ljava/util/Map;

    .line 531
    const-string v39, "http.strictPostRedirect"

    const-string/jumbo v40, "true"

    invoke-static/range {v39 .. v40}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    return-void

    .line 445
    .end local v12    # "evtHolderClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_3
    move-exception v39

    goto/16 :goto_3

    :catch_4
    move-exception v39

    goto/16 :goto_3

    :catch_5
    move-exception v39

    goto/16 :goto_3

    :catch_6
    move-exception v39

    goto/16 :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2587
    return-void
.end method

.method public static acquire(Ljava/util/concurrent/Semaphore;)V
    .locals 2
    .param p0, "sem"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 7025
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7032
    return-void

    .line 7027
    :catch_0
    move-exception v0

    .line 7028
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 7030
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<-TV;>;>(TC;[TV;)TC;"
        }
    .end annotation

    .prologue
    .line 6577
    .local p0, "c":Ljava/util/Collection;, "TC;"
    .local p1, "vals":[Ljava/lang/Object;, "[TV;"
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6579
    return-object p0
.end method

.method public static varargs addAll(Ljava/util/Map;[Ljava/util/Map$Entry;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(TM;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TM;"
        }
    .end annotation

    .prologue
    .line 6593
    .local p0, "m":Ljava/util/Map;, "TM;"
    .local p1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/util/Map$Entry;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 6594
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6596
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object p0
.end method

.method public static varargs addAll(Ljava/util/Map;[Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(TM;[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;)TM;"
        }
    .end annotation

    .prologue
    .line 6610
    .local p0, "m":Ljava/util/Map;, "TM;"
    .local p1, "entries":[Lorg/apache/ignite/lang/IgniteBiTuple;, "[Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/lang/IgniteBiTuple;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 6611
    .local v3, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6613
    .end local v3    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    :cond_0
    return-object p0
.end method

.method public static addAll([I[I)[I
    .locals 4
    .param p0, "arr1"    # [I
    .param p1, "arr2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 6184
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 6186
    .local v0, "all":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6187
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6189
    return-object v0
.end method

.method public static addJavaNoOpLogger()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7673
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7675
    .local v6, "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    const-string v7, ""

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 7677
    .local v5, "log":Ljava/util/logging/Logger;
    invoke-virtual {v5}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/logging/Handler;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 7678
    .local v1, "h":Ljava/util/logging/Handler;
    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 7680
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7677
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7683
    .end local v1    # "h":Ljava/util/logging/Handler;
    :cond_0
    new-instance v2, Ljava/util/logging/ConsoleHandler;

    invoke-direct {v2}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 7685
    .local v2, "hnd":Ljava/util/logging/ConsoleHandler;
    sget-object v7, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v2, v7}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 7687
    invoke-virtual {v5, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 7689
    return-object v6
.end method

.method public static addLastCause(Ljava/lang/Throwable;Ljava/lang/Throwable;Lorg/apache/ignite/IgniteLogger;)Z
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    const/4 v2, 0x0

    .line 7145
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7166
    :cond_0
    :goto_0
    return v2

    .line 7148
    :cond_1
    move-object v1, p0

    .local v1, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v1, :cond_0

    .line 7149
    if-eq v1, p1, :cond_0

    .line 7152
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 7154
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7162
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 7156
    :catch_0
    move-exception v0

    .line 7157
    .local v0, "ignored":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add cause to the end of cause chain (cause is printed here but will not be propagated to callee): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add cause to the end of cause chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v2, v3, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 7148
    .end local v0    # "ignored":Ljava/lang/IllegalStateException;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1
.end method

.method public static addLog4jNoOpLogger()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 7620
    :try_start_0
    const-string v6, "org.apache.log4j.Logger"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 7622
    .local v3, "logCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getRootLogger"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 7625
    .local v5, "rootLog":Ljava/lang/Object;
    :try_start_1
    const-string v6, "org.apache.log4j.varia.NullAppender"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 7633
    .local v4, "nullApp":Ljava/lang/Object;
    :try_start_2
    const-string v6, "org.apache.log4j.Appender"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7635
    .local v0, "appCls":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "addAppender"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7641
    new-instance v6, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {v6, v5, v4}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "appCls":Ljava/lang/Class;
    .end local v4    # "nullApp":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 7627
    :catch_0
    move-exception v2

    .line 7630
    .local v2, "ignore":Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v6, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 7637
    .end local v2    # "ignore":Ljava/lang/ClassNotFoundException;
    .end local v5    # "rootLog":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 7638
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    const-string v7, "Failed to add no-op logger for Log4j."

    invoke-direct {v6, v7, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static addresses(Ljava/net/InetAddress;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1594
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "ipAddr":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    .line 1600
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1601
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1602
    return-void
.end method

.method public static addressesAsString(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 8261
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8262
    const-string v6, ""

    .line 8286
    :goto_0
    return-object v6

    .line 8264
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8265
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 8267
    :cond_1
    new-instance v5, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    const-string v6, "["

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 8269
    .local v5, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 8271
    .local v3, "hostNamesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 8273
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8274
    .local v0, "addr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 8275
    const/4 v1, 0x0

    .line 8279
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 8281
    .local v2, "hostName":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_4

    .end local v2    # "hostName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_1

    .line 8277
    :cond_2
    const-string v6, ", "

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_2

    .line 8279
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 8281
    .restart local v2    # "hostName":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_4

    .line 8284
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "hostName":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 8286
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;
    .locals 2
    .param p0, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 8250
    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->hostNames()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->addressesAsString(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized allLocalIps()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1733
    const-class v10, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v10

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    const/4 v9, 0x4

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    .local v6, "ips":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 1738
    .local v8, "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v8, :cond_2

    .line 1739
    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 1740
    .local v7, "itf":Ljava/net/NetworkInterface;
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1741
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 1743
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1744
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1746
    .local v2, "hostAddr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1747
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1753
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "hostAddr":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "itf":Ljava/net/NetworkInterface;
    .end local v8    # "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v5

    .line 1754
    .local v5, "ignore":Ljava/net/SocketException;
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1759
    .end local v5    # "ignore":Ljava/net/SocketException;
    .end local v6    # "ips":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    monitor-exit v10

    return-object v6

    .line 1757
    .restart local v6    # "ips":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    :try_start_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1733
    .end local v8    # "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static declared-synchronized allLocalMACs()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1778
    const-class v8, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v8

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    .local v6, "macs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 1783
    .local v4, "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-eqz v4, :cond_1

    .line 1784
    invoke-static {v4}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 1785
    .local v3, "itf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    .line 1788
    .local v0, "hwAddr":[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-lez v7, :cond_0

    .line 1789
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1791
    .local v5, "mac":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1792
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1797
    .end local v0    # "hwAddr":[B
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "itf":Ljava/net/NetworkInterface;
    .end local v4    # "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v5    # "mac":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1798
    .local v2, "ignore":Ljava/net/SocketException;
    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1803
    .end local v2    # "ignore":Ljava/net/SocketException;
    .end local v6    # "macs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    monitor-exit v8

    return-object v6

    .line 1801
    .restart local v4    # "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v6    # "macs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1778
    .end local v4    # "itfs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static appendJvmId(Lorg/apache/ignite/internal/util/typedef/internal/SB;)V
    .locals 3
    .param p0, "sb"    # Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .prologue
    .line 3934
    const-string v1, "IGNITE_MBEAN_APPEND_JVM_ID"

    invoke-static {v1}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/apache/ignite/Ignite;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3938
    .local v0, "gridId":Ljava/lang/String;
    const-string v1, "jvmId="

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3940
    .end local v0    # "gridId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static arrayCopy([BI[BII)I
    .locals 10
    .param p0, "src"    # [B
    .param p1, "off"    # I
    .param p2, "resBuf"    # [B
    .param p3, "resOff"    # I
    .param p4, "len"    # I

    .prologue
    .line 7954
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7956
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE_BYTE_ARR_CP:Z

    if-eqz v0, :cond_1

    .line 7957
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget v0, Lorg/apache/ignite/internal/util/IgniteUtils;->BYTE_ARRAY_DATA_OFFSET:I

    add-int/2addr v0, p1

    int-to-long v3, v0

    sget v0, Lorg/apache/ignite/internal/util/IgniteUtils;->BYTE_ARRAY_DATA_OFFSET:I

    add-int/2addr v0, p3

    int-to-long v6, v0

    int-to-long v8, p4

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 7961
    :goto_0
    add-int v0, p3, p4

    return v0

    .line 7959
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs arrayList(Ljava/lang/Iterable;I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;
    .locals 4
    .param p1, "cap"    # I
    .param p2    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TR;R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8850
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 8851
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-gez p1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 8853
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8855
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8856
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-static {v2, p2}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8857
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8860
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    return-object v1
.end method

.method public static arrayList(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TR;R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8837
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8839
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs arrayList(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;
    .locals 1
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TR;R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-TT;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 8827
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8829
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->arrayList(Ljava/lang/Iterable;I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2658
    .local p0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$18;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/IgniteUtils$18;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static assertParameter(ZLjava/lang/String;)V
    .locals 3
    .param p0, "cond"    # Z
    .param p1, "condDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 8945
    if-nez p0, :cond_0

    .line 8946
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter failed condition check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8947
    :cond_0
    return-void
.end method

.method public static asyncLogError(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;",
            "Lorg/apache/ignite/IgniteLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7071
    .local p0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    if-eqz p0, :cond_0

    .line 7072
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$22;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils$22;-><init>(Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p0, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 7082
    :cond_0
    return-void
.end method

.method public static await(Ljava/util/concurrent/CountDownLatch;)V
    .locals 6
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 6853
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 6854
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6861
    :cond_0
    return-void

    .line 6856
    :catch_0
    move-exception v0

    .line 6857
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6859
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static await(Ljava/util/concurrent/locks/Condition;)V
    .locals 2
    .param p0, "cond"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 6816
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6823
    return-void

    .line 6818
    :catch_0
    move-exception v0

    .line 6819
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6821
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static await(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 6876
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6878
    :catch_0
    move-exception v0

    .line 6879
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6881
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static await(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p0, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 6836
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6838
    :catch_0
    move-exception v0

    .line 6839
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6841
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static awaitQuiet(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 6895
    const/4 v1, 0x0

    .line 6899
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6908
    if-eqz v1, :cond_0

    .line 6909
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 6910
    :cond_0
    return-void

    .line 6903
    :catch_0
    move-exception v0

    .line 6904
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 6905
    goto :goto_0
.end method

.method public static awaitQuiet(Ljava/util/concurrent/CyclicBarrier;)V
    .locals 3
    .param p0, "barrier"    # Ljava/util/concurrent/CyclicBarrier;

    .prologue
    .line 6921
    const/4 v1, 0x0

    .line 6925
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6937
    :goto_1
    if-eqz v1, :cond_0

    .line 6938
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 6939
    :cond_0
    return-void

    .line 6929
    :catch_0
    move-exception v0

    .line 6930
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 6934
    goto :goto_0

    .line 6932
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 6933
    .local v0, "ignored":Ljava/util/concurrent/BrokenBarrierException;
    goto :goto_1
.end method

.method public static box(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 7796
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 7797
    const/4 v0, 0x0

    .line 7801
    :cond_0
    :goto_0
    return-object v0

    .line 7799
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->boxedClsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 7801
    .local v0, "boxed":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0
.end method

.method public static byteArray2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "arr"    # [B

    .prologue
    .line 3302
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    array-length v5, p0

    shl-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(I)V

    .line 3304
    .local v4, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 3305
    .local v1, "b":B
    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v5

    and-int/lit8 v6, v1, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3307
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static byteArray2String([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "arr"    # [B
    .param p1, "hdrFmt"    # Ljava/lang/String;
    .param p2, "bodyFmt"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2164
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2165
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2166
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez p2, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2168
    :cond_2
    new-instance v5, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 2170
    .local v5, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 2172
    const/4 v2, 0x1

    .line 2174
    .local v2, "first":Z
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-byte v1, v0, v3

    .line 2175
    .local v1, "b":B
    if-eqz v2, :cond_3

    .line 2176
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 2178
    const/4 v2, 0x0

    .line 2174
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2181
    :cond_3
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_1

    .line 2183
    .end local v1    # "b":B
    :cond_4
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 2185
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static bytesEqual([BI[BII)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "aOff"    # I
    .param p2, "b"    # [B
    .param p3, "bOff"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 2536
    add-int v2, p1, p4

    array-length v3, p0

    if-gt v2, v3, :cond_0

    add-int v2, p3, p4

    array-length v3, p2

    if-le v2, v3, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return v1

    .line 2539
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 2540
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_0

    .line 2539
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2543
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static bytesToDouble([BI)D
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 2511
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->bytesToLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bytesToFloat([BI)F
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 2522
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->bytesToInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static bytesToIgniteUuid([BI)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 8
    .param p0, "in"    # [B
    .param p1, "off"    # I

    .prologue
    .line 4445
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->bytesToLong([BI)J

    move-result-wide v4

    .line 4446
    .local v4, "most":J
    add-int/lit8 v6, p1, 0x8

    invoke-static {p0, v6}, Lorg/apache/ignite/internal/util/IgniteUtils;->bytesToLong([BI)J

    move-result-wide v0

    .line 4447
    .local v0, "least":J
    add-int/lit8 v6, p1, 0x10

    invoke-static {p0, v6}, Lorg/apache/ignite/internal/util/IgniteUtils;->bytesToLong([BI)J

    move-result-wide v2

    .line 4449
    .local v2, "locId":J
    new-instance v6, Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v7, Ljava/util/UUID;

    invoke-direct {v7, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-static {v7}, Lorg/apache/ignite/internal/util/IgniteUuidCache;->onIgniteUuidRead(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    return-object v6
.end method

.method public static bytesToInt([BI)I
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 2446
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2448
    :cond_0
    const/4 v0, 0x4

    .line 2450
    .local v0, "bytesCnt":I
    add-int v5, p1, v0

    array-length v6, p0

    if-le v5, v6, :cond_1

    .line 2452
    array-length v5, p0

    sub-int v0, v5, p1

    .line 2454
    :cond_1
    const/4 v3, 0x0

    .line 2456
    .local v3, "res":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p1

    .end local p1    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2457
    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v4, v5, 0x3

    .line 2459
    .local v4, "shift":I
    int-to-long v6, v3

    const-wide/16 v8, 0xff

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "off":I
    .restart local p1    # "off":I
    aget-byte v5, p0, v2

    int-to-long v10, v5

    and-long/2addr v8, v10

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    long-to-int v3, v6

    .line 2456
    add-int/lit8 v1, v1, 0x1

    move v2, p1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2462
    .end local v4    # "shift":I
    :cond_2
    return v3
.end method

.method public static bytesToLong([BI)J
    .locals 10
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 2473
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2475
    :cond_0
    const/16 v0, 0x8

    .line 2477
    .local v0, "bytesCnt":I
    add-int v6, p1, v0

    array-length v7, p0

    if-le v6, v7, :cond_1

    .line 2478
    array-length v6, p0

    sub-int v0, v6, p1

    .line 2480
    :cond_1
    const-wide/16 v4, 0x0

    .line 2482
    .local v4, "res":J
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p1

    .end local p1    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2483
    sub-int v6, v0, v1

    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v3, v6, 0x3

    .line 2485
    .local v3, "shift":I
    const-wide/16 v6, 0xff

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "off":I
    .restart local p1    # "off":I
    aget-byte v8, p0, v2

    int-to-long v8, v8

    and-long/2addr v6, v8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    .line 2482
    add-int/lit8 v1, v1, 0x1

    move v2, p1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2488
    .end local v3    # "shift":I
    :cond_2
    return-wide v4
.end method

.method public static bytesToShort([BI)S
    .locals 12
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 2419
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2421
    :cond_0
    const/4 v0, 0x2

    .line 2423
    .local v0, "bytesCnt":I
    add-int v5, p1, v0

    array-length v6, p0

    if-le v5, v6, :cond_1

    .line 2425
    array-length v5, p0

    sub-int v0, v5, p1

    .line 2427
    :cond_1
    const/4 v3, 0x0

    .line 2429
    .local v3, "res":S
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p1

    .end local p1    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2430
    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v4, v5, 0x3

    .line 2432
    .local v4, "shift":I
    int-to-long v6, v3

    const-wide/16 v8, 0xff

    add-int/lit8 p1, v2, 0x1

    .end local v2    # "off":I
    .restart local p1    # "off":I
    aget-byte v5, p0, v2

    int-to-long v10, v5

    and-long/2addr v8, v10

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    long-to-int v5, v6

    int-to-short v3, v5

    .line 2429
    add-int/lit8 v1, v1, 0x1

    move v2, p1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2435
    .end local v4    # "shift":I
    :cond_2
    return v3
.end method

.method public static bytesToUuid([BI)Ljava/util/UUID;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 2500
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static cacheAttributes(Lorg/apache/ignite/cluster/ClusterNode;)[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .locals 1
    .param p0, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 7041
    const-string v0, "org.apache.ignite.cache"

    invoke-interface {p0, v0}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    return-object v0
.end method

.method public static calculateMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8893
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->calculateMD5Digest(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 8896
    .local v4, "md5Bytes":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8898
    .local v5, "sb":Ljava/lang/StringBuilder;
    move-object v0, v4

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    .line 8899
    .local v3, "md5Byte":B
    and-int/lit16 v6, v3, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8898
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8901
    .end local v3    # "md5Byte":B
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static calculateMD5Digest(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8872
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 8873
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8874
    .local v1, "fis":Ljava/io/InputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 8878
    .local v0, "dataBytes":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "nread":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 8879
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 8881
    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4
.end method

.method public static cancel(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/util/worker/GridWorker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4152
    .local p0, "ws":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/util/worker/GridWorker;>;"
    if-eqz p0, :cond_0

    .line 4153
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/worker/GridWorker;

    .line 4154
    .local v1, "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    goto :goto_0

    .line 4155
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    :cond_0
    return-void
.end method

.method public static cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 0
    .param p0, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4142
    if-eqz p0, :cond_0

    .line 4143
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 4144
    :cond_0
    return-void
.end method

.method public static capacity(I)I
    .locals 1
    .param p0, "expSize"    # I

    .prologue
    .line 8704
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 8705
    add-int/lit8 v0, p0, 0x1

    .line 8710
    :goto_0
    return v0

    .line 8707
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 8708
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 8710
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private static capitalFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 7582
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 6661
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6667
    :cond_0
    instance-of v0, p0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    if-eqz v0, :cond_2

    .line 6668
    check-cast p0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object p0

    .line 6664
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 6665
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 6673
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v0, p0, Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v0, :cond_3

    .line 6674
    check-cast p0, Lorg/apache/ignite/IgniteCheckedException;

    .line 6677
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object p0

    .line 6676
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_3
    instance-of v0, p0, Lorg/apache/ignite/IgniteException;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 6677
    :cond_4
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v0, p0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_1

    .line 6679
    :cond_5
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6681
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0
.end method

.method public static ceilPow2(I)I
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 684
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static checkNextToken(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "t"    # Ljava/util/StringTokenizer;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 6427
    :try_start_0
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6428
    const/4 v1, 0x1

    .line 6433
    :goto_0
    return v1

    .line 6430
    :cond_0
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6432
    :catch_0
    move-exception v0

    .line 6433
    .local v0, "ignored":Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static classForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p0, "cls"    # Ljava/lang/String;
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1081
    .local p1, "dflt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1084
    .end local p1    # "dflt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object p1

    .line 1083
    .restart local p1    # "dflt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method public static classNameToResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "clsName"    # Ljava/lang/String;

    .prologue
    .line 5077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\."

    const-string v2, "/"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearClassCache()V
    .locals 1

    .prologue
    .line 7854
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->classCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 7855
    return-void
.end method

.method public static clearClassCache(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p0, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 7847
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->classCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7848
    return-void
.end method

.method public static close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p0, "rsrc"    # Ljava/lang/AutoCloseable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3449
    if-eqz p0, :cond_0

    .line 3451
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3456
    :cond_0
    :goto_0
    return-void

    .line 3453
    :catch_0
    move-exception v0

    .line 3454
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static close(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p0, "rsrc"    # Ljava/net/DatagramSocket;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3502
    if-eqz p0, :cond_0

    .line 3503
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    .line 3504
    :cond_0
    return-void
.end method

.method public static close(Ljava/net/URLClassLoader;Lorg/apache/ignite/IgniteLogger;)V
    .locals 10
    .param p0, "clsLdr"    # Ljava/net/URLClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3579
    if-eqz p0, :cond_1

    .line 3581
    :try_start_0
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaNetAccess()Lsun/misc/JavaNetAccess;

    move-result-object v8

    invoke-interface {v8, p0}, Lsun/misc/JavaNetAccess;->getURLClassPath(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v7

    .line 3583
    .local v7, "path":Lsun/misc/URLClassPath;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "loaders"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 3585
    .local v5, "ldrFld":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3587
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 3589
    .local v6, "ldrs":Ljava/lang/Iterable;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3590
    .local v4, "ldr":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "JarLoader"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 3592
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "jar"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 3594
    .local v3, "jarFld":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3596
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipFile;

    .line 3598
    .local v2, "jar":Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3600
    .end local v2    # "jar":Ljava/util/zip/ZipFile;
    .end local v3    # "jarFld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 3601
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3604
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "ldr":Ljava/lang/Object;
    .end local v5    # "ldrFld":Ljava/lang/reflect/Field;
    .end local v6    # "ldrs":Ljava/lang/Iterable;
    .end local v7    # "path":Lsun/misc/URLClassPath;
    :catch_1
    move-exception v0

    .line 3605
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 3607
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static close(Ljava/nio/channels/SelectionKey;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p0, "rsrc"    # Ljava/nio/channels/SelectionKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3480
    if-eqz p0, :cond_0

    .line 3482
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 3483
    :cond_0
    return-void
.end method

.method public static close(Ljava/nio/channels/Selector;Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p0, "rsrc"    # Ljava/nio/channels/Selector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3513
    if-eqz p0, :cond_0

    .line 3515
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3516
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3521
    :cond_0
    :goto_0
    return-void

    .line 3518
    :catch_0
    move-exception v0

    .line 3519
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static close(Ljavax/naming/Context;Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p0, "rsrc"    # Ljavax/naming/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3546
    if-eqz p0, :cond_0

    .line 3548
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/Context;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3553
    :cond_0
    :goto_0
    return-void

    .line 3550
    :catch_0
    move-exception v0

    .line 3551
    .local v0, "e":Ljavax/naming/NamingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/naming/NamingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static closeQuiet(Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "rsrc"    # Ljava/lang/AutoCloseable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3464
    if-eqz p0, :cond_0

    .line 3466
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    :cond_0
    :goto_0
    return-void

    .line 3468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuiet(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p0, "rsrc"    # Ljava/nio/channels/SelectionKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3491
    if-eqz p0, :cond_0

    .line 3493
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 3494
    :cond_0
    return-void
.end method

.method public static closeQuiet(Ljava/nio/channels/Selector;)V
    .locals 1
    .param p0, "rsrc"    # Ljava/nio/channels/Selector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3529
    if-eqz p0, :cond_0

    .line 3531
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3532
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3537
    :cond_0
    :goto_0
    return-void

    .line 3534
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuiet(Ljavax/naming/Context;)V
    .locals 1
    .param p0, "rsrc"    # Ljavax/naming/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3561
    if-eqz p0, :cond_0

    .line 3563
    :try_start_0
    invoke-interface {p0}, Ljavax/naming/Context;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3568
    :cond_0
    :goto_0
    return-void

    .line 3565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 5562
    const-string v0, "org.apache.ignite.internal.visor."

    const-string v1, "o.a.i.i.v."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.ignite.internal."

    const-string v2, "o.a.i.i."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.ignite.scalar."

    const-string v2, "o.a.i.s."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.ignite."

    const-string v2, "o.a.i."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compareVersionNumbers(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "v1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "v2"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 5966
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move v6, v8

    .line 5993
    :cond_0
    :goto_0
    return v6

    .line 5969
    :cond_1
    if-nez p0, :cond_2

    move v6, v7

    .line 5970
    goto :goto_0

    .line 5972
    :cond_2
    if-eqz p1, :cond_0

    .line 5975
    const-string v9, "[\\.\\_\\-]"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5976
    .local v4, "part1":[Ljava/lang/String;
    const-string v9, "[\\.\\_\\-]"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5977
    .local v5, "part2":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 5979
    .local v1, "idx":I
    :goto_1
    array-length v9, v4

    if-ge v1, v9, :cond_5

    array-length v9, v5

    if-ge v1, v9, :cond_5

    .line 5980
    aget-object v2, v4, v1

    .line 5981
    .local v2, "p1":Ljava/lang/String;
    aget-object v3, v5, v1

    .line 5983
    .local v3, "p2":Ljava/lang/String;
    const-string v9, "\\d+"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 5986
    .local v0, "cmp":I
    :goto_2
    if-eqz v0, :cond_4

    move v6, v0

    .line 5987
    goto :goto_0

    .line 5983
    .end local v0    # "cmp":I
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 5979
    .restart local v0    # "cmp":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5990
    .end local v0    # "cmp":I
    .end local v2    # "p1":Ljava/lang/String;
    .end local v3    # "p2":Ljava/lang/String;
    :cond_5
    array-length v9, v4

    array-length v10, v5

    if-ne v9, v10, :cond_6

    move v6, v8

    .line 5991
    goto :goto_0

    .line 5993
    :cond_6
    array-length v8, v4

    if-gt v8, v1, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public static concurrentMapSegment(II)I
    .locals 6
    .param p0, "hash"    # I
    .param p1, "concurLvl"    # I

    .prologue
    .line 7222
    shl-int/lit8 v4, p0, 0xf

    xor-int/lit16 v4, v4, -0x3283

    add-int/2addr p0, v4

    .line 7223
    ushr-int/lit8 v4, p0, 0xa

    xor-int/2addr p0, v4

    .line 7224
    shl-int/lit8 v4, p0, 0x3

    add-int/2addr p0, v4

    .line 7225
    ushr-int/lit8 v4, p0, 0x6

    xor-int/2addr p0, v4

    .line 7226
    shl-int/lit8 v4, p0, 0x2

    shl-int/lit8 v5, p0, 0xe

    add-int/2addr v4, v5

    add-int/2addr p0, v4

    .line 7228
    const/4 v2, 0x0

    .line 7229
    .local v2, "shift":I
    const/4 v3, 0x1

    .line 7231
    .local v3, "size":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 7232
    add-int/lit8 v2, v2, 0x1

    .line 7233
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7236
    :cond_0
    rsub-int/lit8 v1, v2, 0x20

    .line 7237
    .local v1, "segmentShift":I
    add-int/lit8 v0, v3, -0x1

    .line 7239
    .local v0, "segmentMask":I
    ushr-int v4, p0, v1

    and-int/2addr v4, v0

    return v4
.end method

.method public static consistentId(Ljava/util/Collection;I)Ljava/lang/String;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 7970
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 7972
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7974
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7975
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7977
    .end local v0    # "addr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7979
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7981
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static containsAll(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "base":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v3, 0x0

    .line 5021
    sget-boolean v4, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5022
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5024
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5025
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5026
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5028
    .local v2, "val":Ljava/lang/Object;
    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5031
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5039
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "val":Ljava/lang/Object;
    :cond_4
    :goto_0
    return v3

    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static containsIntArray([II)Z
    .locals 6
    .param p0, "arr"    # [I
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x0

    .line 3364
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3366
    :cond_0
    array-length v5, p0

    if-nez v5, :cond_2

    .line 3373
    :cond_1
    :goto_0
    return v4

    .line 3369
    :cond_2
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 3370
    .local v1, "i":I
    if-ne v1, p1, :cond_3

    .line 3371
    const/4 v4, 0x1

    goto :goto_0

    .line 3369
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static varargs containsObjectArray([Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 11
    .param p0, "arr"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3320
    if-eqz p0, :cond_0

    array-length v10, p0

    if-nez v10, :cond_2

    :cond_0
    move v8, v9

    .line 3333
    :cond_1
    :goto_0
    return v8

    .line 3323
    :cond_2
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v6, v0, v3

    .line 3324
    .local v6, "o":Ljava/lang/Object;
    invoke-static {v6, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3327
    if-eqz p2, :cond_3

    array-length v10, p2

    if-lez v10, :cond_3

    .line 3328
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v7, v1, v2

    .line 3329
    .local v7, "v":Ljava/lang/Object;
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3328
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3323
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "v":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .end local v6    # "o":Ljava/lang/Object;
    :cond_4
    move v8, v9

    .line 3333
    goto :goto_0
.end method

.method public static containsObjectArray([Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "arr"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 3345
    if-eqz p0, :cond_0

    array-length v5, p0

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3353
    :cond_0
    :goto_0
    return v4

    .line 3348
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3349
    .local v3, "o":Ljava/lang/Object;
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3350
    const/4 v4, 0x1

    goto :goto_0

    .line 3348
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static containsStringArray([Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3386
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 3388
    :cond_0
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 3390
    .local v3, "s":Ljava/lang/String;
    if-nez v3, :cond_1

    if-nez p1, :cond_1

    .line 3406
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 3394
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    if-nez p1, :cond_3

    .line 3388
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3398
    :cond_3
    if-eqz p2, :cond_4

    .line 3399
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 3402
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 3406
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static containsStringCollection(Ljava/lang/Iterable;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "val"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 3419
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3421
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3423
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 3439
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return v2

    .line 3427
    .restart local v1    # "s":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 3431
    if-eqz p2, :cond_3

    .line 3432
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3435
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3439
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;
    .locals 3
    .param p0, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 652
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->exceptionConverters:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/C1;

    .line 654
    .local v0, "converter":Lorg/apache/ignite/internal/util/typedef/C1;, "Lorg/apache/ignite/internal/util/typedef/C1<Lorg/apache/ignite/IgniteCheckedException;Lorg/apache/ignite/IgniteException;>;"
    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/util/typedef/C1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/IgniteException;

    .line 660
    :goto_0
    return-object v1

    .line 657
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/ignite/IgniteException;

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/IgniteException;

    goto :goto_0

    .line 660
    :cond_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static convertExceptionNoWrap(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/Exception;
    .locals 3
    .param p0, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 636
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->exceptionConverters:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/C1;

    .line 638
    .local v0, "converter":Lorg/apache/ignite/internal/util/typedef/C1;, "Lorg/apache/ignite/internal/util/typedef/C1<Lorg/apache/ignite/IgniteCheckedException;Lorg/apache/ignite/IgniteException;>;"
    if-eqz v0, :cond_0

    .line 639
    invoke-interface {v0, p0}, Lorg/apache/ignite/internal/util/typedef/C1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    .line 644
    :goto_0
    return-object v1

    .line 641
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/ignite/IgniteException;

    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 644
    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2849
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2850
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2852
    :cond_1
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 2854
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 2856
    .local v1, "cnt":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    if-lez v2, :cond_2

    .line 2857
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2859
    add-int/2addr v1, v2

    goto :goto_0

    .line 2862
    :cond_2
    return v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2874
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2875
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2877
    :cond_1
    const/16 v3, 0x1000

    new-array v0, v3, [C

    .line 2879
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2881
    .local v1, "cnt":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, "n":I
    if-lez v2, :cond_2

    .line 2882
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 2884
    add-int/2addr v1, v2

    goto :goto_0

    .line 2887
    :cond_2
    return v1
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Z)V
    .locals 16
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2692
    sget-boolean v13, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    if-nez p0, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 2693
    :cond_0
    sget-boolean v13, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v13, :cond_1

    if-nez p1, :cond_1

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 2704
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 2705
    new-instance v13, Ljava/io/FileNotFoundException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Source can\'t be found: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2708
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2709
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Source and destination are the same [src="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", dest="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2711
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2712
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_4

    if-nez p2, :cond_4

    .line 2713
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Destination already exists: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2715
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v13

    if-nez v13, :cond_7

    .line 2716
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Destination is not writable:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2719
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 2721
    .local v12, "parent":Ljava/io/File;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6

    .line 2725
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 2728
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2730
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdir()Z

    .line 2733
    .end local v12    # "parent":Ljava/io/File;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2737
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 2739
    .local v5, "files":[Ljava/io/File;
    move-object v2, v5

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_e

    aget-object v4, v2, v6

    .line 2740
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2741
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2743
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_8

    .line 2744
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t create directory: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2746
    :cond_8
    move/from16 v0, p2

    invoke-static {v4, v3, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->copy(Ljava/io/File;Ljava/io/File;Z)V

    .line 2739
    .end local v3    # "dir":Ljava/io/File;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2749
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v4, v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->copy(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_1

    .line 2754
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_b

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2756
    .restart local v4    # "file":Ljava/io/File;
    :goto_2
    if-nez p2, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2757
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Destination already exists: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .end local v4    # "file":Ljava/io/File;
    :cond_b
    move-object/from16 v4, p1

    .line 2754
    goto :goto_2

    .line 2759
    .restart local v4    # "file":Ljava/io/File;
    :cond_c
    const/4 v7, 0x0

    .line 2760
    .local v7, "in":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 2763
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2764
    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2766
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v8, v11}, Lorg/apache/ignite/internal/util/IgniteUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2769
    if-eqz v8, :cond_d

    .line 2770
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 2772
    :cond_d
    if-eqz v11, :cond_e

    .line 2773
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/FileDescriptor;->sync()V

    .line 2775
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 2779
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v11    # "out":Ljava/io/FileOutputStream;
    :cond_e
    return-void

    .line 2769
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v7, :cond_f

    .line 2770
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 2772
    :cond_f
    if-eqz v10, :cond_10

    .line 2773
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/FileDescriptor;->sync()V

    .line 2775
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_10
    throw v13

    .line 2769
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v13

    move-object v10, v11

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static copyIfExceeded([II)[I
    .locals 1
    .param p0, "arr"    # [I
    .param p1, "len"    # I

    .prologue
    .line 6411
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6412
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    array-length v0, p0

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6414
    :cond_2
    array-length v0, p0

    if-ne p1, v0, :cond_3

    .end local p0    # "arr":[I
    :goto_0
    return-object p0

    .restart local p0    # "arr":[I
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    goto :goto_0
.end method

.method public static copyMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1391
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static copyMemory(JI)[B
    .locals 10
    .param p0, "ptr"    # J
    .param p2, "size"    # I

    .prologue
    .line 8686
    new-array v5, p2, [B

    .line 8688
    .local v5, "res":[B
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    sget v0, Lorg/apache/ignite/internal/util/IgniteUtils;->BYTE_ARRAY_DATA_OFFSET:I

    int-to-long v6, v0

    int-to-long v8, p2

    move-wide v3, p0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 8690
    return-object v5
.end method

.method public static courtesy(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 3650
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3652
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3654
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->courtesy(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3655
    return-void
.end method

.method public static courtesy(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "longMsg"    # Ljava/lang/Object;
    .param p2, "shortMsg"    # Ljava/lang/Object;

    .prologue
    .line 3668
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3669
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3671
    :cond_1
    if-eqz p0, :cond_2

    .line 3672
    const-string v0, "org.apache.ignite.CourtesyConfigNotice"

    invoke-interface {p0, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    .line 3676
    :goto_0
    return-void

    .line 3674
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->SHORT_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (courtesy) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static ctorFactory()Ljava/lang/reflect/Method;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 701
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->CTOR_FACTORY:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static currentTimeMillis()J
    .locals 2

    .prologue
    .line 667
    sget-wide v0, Lorg/apache/ignite/internal/util/IgniteUtils;->curTimeMillis:J

    return-wide v0
.end method

.method public static customDirectoryLogFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dir"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 7739
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 7741
    :cond_0
    if-nez p0, :cond_1

    .line 7746
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 7744
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 7746
    .local v0, "sep":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-gez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static dash(I)Ljava/lang/String;
    .locals 4
    .param p0, "len"    # I

    .prologue
    .line 2602
    new-array v0, p0, [C

    .line 2604
    .local v0, "dash":[C
    const/16 v1, 0x2d

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 2606
    const/4 v1, 0x0

    add-int/lit8 v2, p0, -0x1

    const/16 v3, 0x2b

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 2608
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->debugPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    return-void
.end method

.method public static debug(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    .locals 0
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 804
    invoke-interface {p0, p1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public static debugHeapUsage()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x100000

    .line 876
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 878
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 880
    .local v0, "runtime":Ljava/lang/Runtime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "><DEBUG><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> Heap stats [free="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M, total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    return-void
.end method

.method private static debugPrefix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->DEBUG_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "><DEBUG><"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static debugStack(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 861
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->debugPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 862
    return-void
.end method

.method public static debugx(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->debugPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->printerrln(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2561
    array-length v3, p0

    .line 2563
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 2564
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2566
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 2569
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2570
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 2572
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 2574
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 2576
    add-int/lit8 v2, v2, 0x1

    .line 2578
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 2569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2581
    .end local v0    # "f":I
    :cond_1
    return-object v4
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 2979
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2981
    :cond_0
    const/4 v5, 0x1

    .line 2983
    .local v5, "res":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2984
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 2986
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_3

    array-length v6, v2

    if-lez v6, :cond_3

    .line 2987
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 2988
    .local v1, "file1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2989
    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->delete(Ljava/io/File;)Z

    move-result v6

    and-int/2addr v5, v6

    .line 2987
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2990
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "jar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2993
    :try_start_0
    new-instance v6, Ljava/util/jar/JarFile;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 2995
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    and-int/2addr v5, v6

    goto :goto_1

    .line 3001
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v5, v6

    goto :goto_1

    .line 3003
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file1":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    and-int/2addr v5, v6

    .line 3008
    .end local v2    # "files":[Ljava/io/File;
    :goto_2
    return v5

    .line 3006
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_2

    .line 2997
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "file1":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static detectClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 5132
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 5134
    :cond_0
    instance-of v5, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v5, :cond_1

    .line 5135
    check-cast p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v5

    .line 5177
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 5137
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isPrimitiveArray(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 5140
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 5143
    :cond_3
    instance-of v5, p0, Ljava/lang/Iterable;

    if-eqz v5, :cond_5

    move-object v5, p0

    .line 5144
    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    .line 5147
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 5150
    .end local v3    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_8

    move-object v5, p0

    .line 5151
    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->firstEntry(Ljava/util/Map;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 5153
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-eqz v0, :cond_8

    .line 5154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 5156
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 5157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 5159
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 5161
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    .line 5165
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "k":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5166
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 5168
    .local v2, "len":I
    if-lez v2, :cond_a

    .line 5169
    const/4 v5, 0x0

    invoke-static {p0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 5171
    .restart local v3    # "o":Ljava/lang/Object;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_0

    .line 5174
    .end local v3    # "o":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_0

    .line 5177
    .end local v2    # "len":I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 5191
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->classLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static detectObjectClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5201
    if-nez p0, :cond_0

    .line 5202
    const/4 v0, 0x0

    .line 5207
    :goto_0
    return-object v0

    .line 5204
    :cond_0
    instance-of v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v0, :cond_1

    .line 5205
    check-cast p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 5207
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public static detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 3
    .param p0, "obj"    # Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .prologue
    .line 5426
    const/4 v1, 0x1

    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridLeanIdentitySet;-><init>()V

    invoke-static {p0, v1, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->nestedPeerDeployAware(Ljava/lang/Object;ZLjava/util/Set;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    .line 5429
    .local v0, "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    if-eqz v0, :cond_0

    .end local v0    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    :goto_0
    return-object v0

    .restart local v0    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    goto :goto_0
.end method

.method public static difference([II[II)[I
    .locals 8
    .param p0, "a"    # [I
    .param p1, "aLen"    # I
    .param p2, "b"    # [I
    .param p3, "bLen"    # I

    .prologue
    .line 6332
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 6333
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 6334
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->isIncreasingArray([II)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 6335
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/IgniteUtils;->isIncreasingArray([II)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 6337
    :cond_3
    new-array v3, p1, [I

    .line 6338
    .local v3, "res":[I
    const/4 v4, 0x0

    .line 6340
    .local v4, "resLen":I
    const/4 v0, 0x0

    .line 6341
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    move v5, v4

    .line 6343
    .end local v4    # "resLen":I
    .local v5, "resLen":I
    :goto_0
    if-ge v1, p1, :cond_6

    if-ge v2, p3, :cond_6

    .line 6344
    aget v6, p0, v1

    aget v7, p2, v2

    if-ne v6, v7, :cond_4

    .line 6345
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 6346
    :cond_4
    aget v6, p0, v1

    aget v7, p2, v2

    if-ge v6, v7, :cond_5

    .line 6347
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "resLen":I
    .restart local v4    # "resLen":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v6, p0, v1

    aput v6, v3, v5

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v5, v4

    .end local v4    # "resLen":I
    .restart local v5    # "resLen":I
    goto :goto_0

    .line 6349
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6352
    :cond_6
    :goto_1
    if-ge v1, p1, :cond_7

    .line 6353
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "resLen":I
    .restart local v4    # "resLen":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v6, p0, v1

    aput v6, v3, v5

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v5, v4

    .end local v4    # "resLen":I
    .restart local v5    # "resLen":I
    goto :goto_1

    .line 6355
    :cond_7
    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->copyIfExceeded([II)[I

    move-result-object v6

    return-object v6
.end method

.method public static discoOrdered(Lorg/apache/ignite/spi/discovery/DiscoverySpi;)Z
    .locals 3
    .param p0, "discoSpi"    # Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    .prologue
    .line 757
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;

    .line 759
    .local v0, "ann":Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/DiscoverySpiOrderSupport;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static doubleToBytes(D[BI)I
    .locals 2
    .param p0, "d"    # D
    .param p2, "bytes"    # [B
    .param p3, "off"    # I

    .prologue
    .line 2294
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lorg/apache/ignite/internal/util/IgniteUtils;->longToBytes(J[BI)I

    move-result v0

    return v0
.end method

.method public static doubleToBytes(D)[B
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 2281
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static downloadUrl(Ljava/net/URL;Ljava/io/File;)Ljava/io/File;
    .locals 12
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1815
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1816
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1818
    :cond_1
    const/4 v5, 0x0

    .line 1819
    .local v5, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 1822
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1824
    .local v1, "conn":Ljava/net/URLConnection;
    instance-of v8, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_2

    .line 1825
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    .line 1827
    .local v4, "https":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v8, Lorg/apache/ignite/internal/util/IgniteUtils$DeploymentHostnameVerifier;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/apache/ignite/internal/util/IgniteUtils$DeploymentHostnameVerifier;-><init>(Lorg/apache/ignite/internal/util/IgniteUtils$1;)V

    invoke-virtual {v4, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1829
    const-string v8, "TLS"

    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 1831
    .local v2, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v8, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 1834
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1837
    .end local v2    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v4    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1839
    if-nez v5, :cond_3

    .line 1840
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to open connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    .end local v1    # "conn":Ljava/net/URLConnection;
    :catch_0
    move-exception v8

    :goto_0
    move-object v3, v8

    .line 1847
    .local v3, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    :try_start_1
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to open HTTPs connection [url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1849
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v5, v11}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 1850
    invoke-static {v6, v11}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v8

    .line 1842
    .restart local v1    # "conn":Ljava/net/URLConnection;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1844
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v5, v7}, Lorg/apache/ignite/internal/util/IgniteUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1849
    invoke-static {v5, v11}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 1850
    invoke-static {v7, v11}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 1853
    return-object p1

    .line 1846
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    :goto_3
    move-object v3, v8

    goto :goto_1

    .line 1849
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v1    # "conn":Ljava/net/URLConnection;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1846
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method public static dumpStack()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 815
    const-string v0, "Dumping stack."

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->dumpStack(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public static dumpStack(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 827
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->debugPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 828
    return-void
.end method

.method public static dumpStack(Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 848
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 849
    return-void
.end method

.method public static dumpStack(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Thread;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6756
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->dumpStack(Ljava/lang/Thread;Ljava/io/PrintStream;)V

    .line 6757
    return-void
.end method

.method public static dumpStack(Ljava/lang/Thread;Ljava/io/PrintStream;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6770
    monitor-enter p1

    .line 6771
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dumping stack trace for thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6773
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 6774
    .local v3, "trace":Ljava/lang/StackTraceElement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6775
    .end local v3    # "trace":Ljava/lang/StackTraceElement;
    :cond_0
    monitor-exit p1

    .line 6776
    return-void

    .line 6775
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static dumpStack(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 835
    const-string v0, "Dumping stack."

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 836
    return-void
.end method

.method public static dumpThreads(Lorg/apache/ignite/IgniteLogger;)V
    .locals 12
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 965
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v4

    .line 967
    .local v4, "mxBean":Ljava/lang/management/ThreadMXBean;
    invoke-interface {v4}, Ljava/lang/management/ThreadMXBean;->isObjectMonitorUsageSupported()Z

    move-result v7

    invoke-interface {v4}, Ljava/lang/management/ThreadMXBean;->isSynchronizerUsageSupported()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Ljava/lang/management/ThreadMXBean;->dumpAllThreads(ZZ)[Ljava/lang/management/ThreadInfo;

    move-result-object v6

    .line 970
    .local v6, "threadInfos":[Ljava/lang/management/ThreadInfo;
    new-instance v7, Lorg/apache/ignite/internal/util/GridStringBuilder;

    const-string v8, "Thread dump at "

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy/MM/dd HH:mm:ss z"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v5

    .line 973
    .local v5, "sb":Lorg/apache/ignite/internal/util/GridStringBuilder;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/management/ThreadInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 974
    .local v2, "info":Ljava/lang/management/ThreadInfo;
    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->printThreadInfo(Ljava/lang/management/ThreadInfo;Lorg/apache/ignite/internal/util/GridStringBuilder;)V

    .line 976
    sget-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 978
    invoke-virtual {v2}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 979
    invoke-virtual {v2}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v7

    invoke-static {v7, v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->printSynchronizersInfo([Ljava/lang/management/LockInfo;Lorg/apache/ignite/internal/util/GridStringBuilder;)V

    .line 981
    sget-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 973
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v2    # "info":Ljava/lang/management/ThreadInfo;
    :cond_1
    sget-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 987
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 988
    return-void
.end method

.method public static emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    .locals 2

    .prologue
    .line 4234
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    const-string v1, "Cluster group is empty."

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 3
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 3727
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3729
    :cond_0
    instance-of v2, p1, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 3730
    check-cast v1, Ljava/lang/Throwable;

    .line 3732
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3739
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 3735
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3737
    .local v0, "s":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "longMsg"    # Ljava/lang/Object;
    .param p2, "shortMsg"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3819
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3820
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3822
    :cond_1
    if-eqz p0, :cond_3

    .line 3823
    if-nez p3, :cond_2

    .line 3824
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;)V

    .line 3837
    :goto_0
    return-void

    .line 3826
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3829
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->SHORT_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (err) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->printerr(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3832
    if-eqz p3, :cond_4

    .line 3833
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 3835
    :cond_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/X;->printerrln()V

    goto :goto_0
.end method

.method public static error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "shortMsg"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3847
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3849
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3851
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0, v0, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3852
    return-void
.end method

.method private static exceptionConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/C1",
            "<",
            "Lorg/apache/ignite/IgniteCheckedException;",
            "Lorg/apache/ignite/IgniteException;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/apache/ignite/IgniteCheckedException;>;Lorg/apache/ignite/internal/util/typedef/C1<Lorg/apache/ignite/IgniteCheckedException;Lorg/apache/ignite/IgniteException;>;>;"
    const-class v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$2;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-class v1, Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$3;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-class v1, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$4;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-class v1, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$5;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-class v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$6;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-class v1, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$7;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-class v1, Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$8;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-class v1, Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$9;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-class v1, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$10;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-class v1, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$11;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-class v1, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$12;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-class v1, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$13;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    return-object v0
.end method

.method public static exceptionWithSuppressed(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/apache/ignite/IgniteCheckedException;"
        }
    .end annotation

    .prologue
    .line 8399
    .local p1, "suppressed":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v0, p0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 8401
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz p1, :cond_0

    .line 8402
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 8403
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Lorg/apache/ignite/IgniteCheckedException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8406
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    return-object v0
.end method

.method public static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v11, 0x5d

    .line 7350
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 7351
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 7354
    :cond_1
    move-object v2, p0

    .local v2, "c":Ljava/lang/Class;
    :goto_0
    :try_start_0
    const-class v8, Ljava/lang/Object;

    if-eq p0, v8, :cond_7

    .line 7355
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v4, v1, v5

    .line 7356
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7357
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 7358
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get class field (field is not static) [cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", fieldName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7380
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 7381
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get field value [fieldName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 7361
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 7366
    .local v0, "accessible":Z
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7368
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 7371
    .local v7, "val":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    .line 7372
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7375
    :cond_3
    return-object v7

    .line 7371
    .end local v7    # "val":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v8

    if-nez v0, :cond_4

    .line 7372
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    throw v8

    .line 7355
    .end local v0    # "accessible":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 7354
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 7385
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_7
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get field value (field was not found) [fieldName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cls="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x5d

    .line 7312
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 7313
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 7316
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, "cls":Ljava/lang/Class;
    :goto_0
    const-class v8, Ljava/lang/Object;

    if-eq v2, v8, :cond_5

    .line 7317
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v4, v1, v5

    .line 7318
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7319
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 7321
    .local v0, "accessible":Z
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7323
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 7325
    .local v7, "val":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    .line 7326
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7328
    :cond_2
    return-object v7

    .line 7317
    .end local v0    # "accessible":Z
    .end local v7    # "val":Ljava/lang/Object;, "TT;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7316
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 7333
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v3

    .line 7334
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/apache/ignite/IgniteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get field value [fieldName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", obj="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 7338
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "cls":Ljava/lang/Class;
    :cond_5
    new-instance v8, Lorg/apache/ignite/IgniteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get field value [fieldName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", obj="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static filler(IC)Ljava/lang/String;
    .locals 2
    .param p0, "len"    # I
    .param p1, "ch"    # C

    .prologue
    .line 1247
    new-array v0, p0, [C

    .line 1249
    .local v0, "a":[C
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([CC)V

    .line 1251
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static filterReachable(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v10, 0x1

    .line 1489
    const/16 v6, 0x7d0

    .line 1491
    .local v6, "reachTimeout":I
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 1534
    :goto_0
    return-object v7

    .line 1494
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 1495
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    const/16 v9, 0x7d0

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/IgniteUtils;->reachable(Ljava/net/InetAddress;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1496
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 1498
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 1501
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1503
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1505
    .local v4, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<*>;>;"
    const/16 v8, 0xa

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 1507
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1508
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v8, Lorg/apache/ignite/internal/util/IgniteUtils$15;

    invoke-direct {v8, v0, v7}, Lorg/apache/ignite/internal/util/IgniteUtils$15;-><init>(Ljava/net/InetAddress;Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1520
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 1522
    .local v3, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1523
    :catch_0
    move-exception v1

    .line 1524
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 1526
    new-instance v8, Lorg/apache/ignite/IgniteException;

    const-string v9, "Thread has been interrupted."

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 1527
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1528
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v8, Lorg/apache/ignite/IgniteException;

    invoke-direct {v8, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1532
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_0
.end method

.method public static varargs findNonPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 8801
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_1

    .line 8803
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8805
    .local v0, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 8806
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8818
    .end local v0    # "mtd":Ljava/lang/reflect/Method;
    :goto_1
    return-object v0

    .line 8811
    :catch_0
    move-exception v1

    .line 8815
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 8818
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findProjectHome(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "startDir"    # Ljava/io/File;

    .prologue
    .line 3082
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .local v0, "cur":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_2

    .line 3084
    new-instance v1, Ljava/io/File;

    const-string v2, "bin"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3082
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 3088
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3091
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static varargs firstNotNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "vals":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 8019
    if-nez p0, :cond_1

    move-object v3, v4

    .line 8027
    :cond_0
    :goto_0
    return-object v3

    .line 8022
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 8023
    .local v3, "val":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_0

    .line 8022
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "val":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v3, v4

    .line 8027
    goto :goto_0
.end method

.method public static varargs fl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 7758
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 7760
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7762
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p1

    if-lez v2, :cond_2

    .line 7763
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 7766
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7767
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7765
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7770
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7771
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7774
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static floatToBytes(F[BI)I
    .locals 1
    .param p0, "f"    # F
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 2316
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->intToBytes(I[BI)I

    move-result v0

    return v0
.end method

.method public static floatToBytes(F)[B
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 2304
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->intToBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 6
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 7813
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 7815
    :cond_0
    sget-object v5, Lorg/apache/ignite/internal/util/IgniteUtils;->primitiveMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 7817
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 7838
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 7820
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v5, Lorg/apache/ignite/internal/util/IgniteUtils;->classCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 7822
    .local v2, "ldrMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Class;>;"
    if-nez v2, :cond_2

    .line 7823
    sget-object v5, Lorg/apache/ignite/internal/util/IgniteUtils;->classCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lorg/jsr166/ConcurrentHashMap8;

    .end local v2    # "ldrMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Class;>;"
    invoke-direct {v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    .restart local v2    # "ldrMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Class;>;"
    invoke-interface {v5, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentMap;

    .line 7825
    .local v4, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Class;>;"
    if-eqz v4, :cond_2

    .line 7826
    move-object v2, v4

    .line 7829
    .end local v4    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Class;>;"
    :cond_2
    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 7831
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_3

    .line 7832
    const/4 v5, 0x1

    invoke-static {p0, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 7834
    .local v3, "old":Ljava/lang/Class;
    if-eqz v3, :cond_3

    .line 7835
    move-object v0, v3

    .end local v3    # "old":Ljava/lang/Class;
    :cond_3
    move-object v1, v0

    .line 7838
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method public static forceEmptyConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1051
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1054
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1069
    :goto_0
    return-object v5

    .line 1056
    :catch_0
    move-exception v3

    .line 1057
    .local v3, "ignore":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->ctorFactory()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1058
    .local v1, "ctorFac":Ljava/lang/reflect/Method;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sunReflectionFactory()Ljava/lang/Object;

    move-result-object v4

    .line 1060
    .local v4, "sunRefFac":Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 1062
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->objectConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    move-object v5, v0

    .line 1069
    goto :goto_0

    .line 1064
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v2

    .line 1065
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get object constructor for class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1064
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static forceNewInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 1154
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->forceEmptyConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1156
    .local v0, "ctor":Ljava/lang/reflect/Constructor;
    if-nez v0, :cond_1

    .line 1157
    const/4 v3, 0x0

    .line 1175
    :cond_0
    :goto_0
    return-object v3

    .line 1159
    :cond_1
    const/4 v2, 0x0

    .line 1163
    .local v2, "set":Z
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1164
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1166
    const/4 v2, 0x1

    .line 1169
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1174
    if-eqz v2, :cond_0

    .line 1175
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1172
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    :try_start_1
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create new instance for class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 1175
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_3
    throw v3

    .line 1171
    :catch_1
    move-exception v3

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v1, v3

    goto :goto_1
.end method

.method public static format(J)Ljava/lang/String;
    .locals 2
    .param p0, "sysTime"    # J

    .prologue
    .line 2632
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->LONG_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "ptrn"    # Ljava/lang/String;

    .prologue
    .line 6727
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6729
    .local v0, "format":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatMins(J)Ljava/lang/String;
    .locals 10
    .param p0, "mins"    # J

    .prologue
    .line 1186
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1188
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-nez v5, :cond_1

    .line 1189
    const-string v5, "< 1 min"

    .line 1210
    :goto_0
    return-object v5

    .line 1191
    :cond_1
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 1193
    .local v4, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const-wide/16 v6, 0x5a0

    div-long v0, p0, v6

    .line 1195
    .local v0, "dd":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 1196
    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    cmp-long v5, v0, v8

    if-nez v5, :cond_5

    const-string v5, " day "

    :goto_1
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1198
    :cond_2
    const-wide/16 v6, 0x5a0

    rem-long/2addr p0, v6

    .line 1200
    const-wide/16 v6, 0x3c

    div-long v2, p0, v6

    .line 1202
    .local v2, "hh":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 1203
    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    cmp-long v5, v2, v8

    if-nez v5, :cond_6

    const-string v5, " hour "

    :goto_2
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1205
    :cond_3
    const-wide/16 v6, 0x3c

    rem-long/2addr p0, v6

    .line 1207
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_4

    .line 1208
    invoke-virtual {v4, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    cmp-long v5, p0, v8

    if-nez v5, :cond_7

    const-string v5, " min "

    :goto_3
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1210
    :cond_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1196
    .end local v2    # "hh":J
    :cond_5
    const-string v5, " days "

    goto :goto_1

    .line 1203
    .restart local v2    # "hh":J
    :cond_6
    const-string v5, " hours "

    goto :goto_2

    .line 1208
    :cond_7
    const-string v5, " mins "

    goto :goto_3
.end method

.method public static get(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 6985
    .local p0, "fut":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 6987
    :catch_0
    move-exception v0

    .line 6988
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6990
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 6991
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6993
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1

    .line 6995
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 6996
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 4948
    const-class v6, Ljava/lang/Object;

    if-ne p0, v6, :cond_1

    move-object v0, v5

    .line 4970
    :cond_0
    :goto_0
    return-object v0

    .line 4951
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4953
    .local v0, "ann":Ljava/lang/annotation/Annotation;, "TT;"
    if-nez v0, :cond_0

    .line 4956
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v1, v2

    .line 4957
    .local v3, "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4959
    if-nez v0, :cond_0

    .line 4956
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4963
    .end local v3    # "itf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_3

    .line 4964
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4966
    if-nez v0, :cond_0

    :cond_3
    move-object v0, v5

    .line 4970
    goto :goto_0
.end method

.method public static getByIndex(Ljava/util/Collection;I)Ljava/lang/Object;
    .locals 5
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 4923
    .local p0, "vals":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4925
    :cond_0
    const/4 v0, 0x0

    .line 4927
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4928
    .local v2, "val":Ljava/lang/Object;, "TT;"
    if-ne p1, v0, :cond_1

    .line 4936
    .end local v2    # "val":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v2

    .line 4931
    .restart local v2    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4932
    goto :goto_0

    .line 4934
    .end local v2    # "val":Ljava/lang/Object;, "TT;"
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Should never be reached."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 4936
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCompilerMx()Ljava/lang/management/CompilationMXBean;
    .locals 1

    .prologue
    .line 5121
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getCompilationMXBean()Ljava/lang/management/CompilationMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getExceptionConverter(Ljava/lang/Class;)Lorg/apache/ignite/internal/util/typedef/C1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ">;)",
            "Lorg/apache/ignite/internal/util/typedef/C1",
            "<",
            "Lorg/apache/ignite/IgniteCheckedException;",
            "Lorg/apache/ignite/IgniteException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/IgniteCheckedException;>;"
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->exceptionConverters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/C1;

    return-object v0
.end method

.method public static getIgniteHome()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3110
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 3114
    .local v1, "ggHomeTup":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 3115
    const-class v3, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v3

    .line 3117
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 3119
    if-nez v1, :cond_1

    .line 3121
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->resolveProjectHome()Ljava/lang/String;

    move-result-object v0

    .local v0, "ggHome0":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 3123
    if-eqz v0, :cond_0

    .line 3124
    const-string v2, "IGNITE_HOME"

    invoke-static {v2, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3128
    :cond_0
    :goto_0
    monitor-exit v3

    .line 3133
    :goto_1
    return-object v0

    .line 3127
    .end local v0    # "ggHome0":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "ggHome0":Ljava/lang/String;
    goto :goto_0

    .line 3128
    .end local v0    # "ggHome0":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3131
    :cond_2
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "ggHome0":Ljava/lang/String;
    goto :goto_1
.end method

.method public static declared-synchronized getLocalHost()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    const-class v1, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 1617
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->resetLocalHost()Ljava/net/InetAddress;

    .line 1619
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1615
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMemoryMx()Ljava/lang/management/MemoryMXBean;
    .locals 1

    .prologue
    .line 5112
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1436
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1439
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 1441
    .local v3, "inetAddr":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1442
    .local v4, "itf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 1443
    .local v5, "itfAddr":Ljava/net/InetAddress;
    invoke-virtual {v5, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1444
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1453
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    .end local v4    # "itf":Ljava/net/NetworkInterface;
    .end local v5    # "itfAddr":Ljava/net/InetAddress;
    :cond_3
    :goto_0
    return-object v6

    .line 1446
    :catch_0
    move-exception v2

    .line 1447
    .local v2, "ignore":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 1449
    .end local v2    # "ignore":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 1450
    .local v2, "ignore":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public static getOsMx()Ljava/lang/management/OperatingSystemMXBean;
    .locals 1

    .prologue
    .line 5103
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getOperatingSystemMXBean()Ljava/lang/management/OperatingSystemMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getRuntimeMx()Ljava/lang/management/RuntimeMXBean;
    .locals 1

    .prologue
    .line 5086
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5003
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 5005
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5006
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5008
    :cond_0
    return-object v0
.end method

.method public static getTaskName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5050
    .local p0, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;"
    const-class v1, Lorg/apache/ignite/compute/ComputeTaskName;

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTaskName;

    .line 5052
    .local v0, "nameAnn":Lorg/apache/ignite/compute/ComputeTaskName;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeTaskName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getThreadMx()Ljava/lang/management/ThreadMXBean;
    .locals 1

    .prologue
    .line 5095
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    return-object v0
.end method

.method private static getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .prologue
    .line 1862
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$17;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$17;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static gridClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1931
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->gridClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static gridEventName(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 727
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVT_NAMES:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 729
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs gridEvents([I)[I
    .locals 5
    .param p0, "excl"    # [I

    .prologue
    .line 739
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    .line 749
    :goto_0
    return-object v1

    .line 742
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->GRID_EVTS:[I

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/ignite/internal/util/IgniteUtils$14;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/util/IgniteUtils$14;-><init>([I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->toIntList([I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;

    move-result-object v0

    .line 749
    .local v0, "evts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static gridIds(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/Ignite;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7101
    .local p0, "grids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/Ignite;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$23;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/IgniteUtils$23;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static grids2names(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/Ignite;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7115
    .local p0, "grids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/Ignite;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$24;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/IgniteUtils$24;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 4982
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 4993
    .local p1, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasCommonClassLoader(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 5287
    .local p1, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 5288
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 5290
    :cond_1
    instance-of v5, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v5, :cond_4

    move-object v5, p0

    check-cast v5, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v5}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 5293
    .local v3, "ldr":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v1, 0x1

    .line 5295
    .local v1, "found":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5296
    .local v4, "obj2":Ljava/lang/Object;
    if-eqz v4, :cond_2

    if-eq v4, p0, :cond_2

    .line 5300
    instance-of v5, v4, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v5, :cond_5

    check-cast v4, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .end local v4    # "obj2":Ljava/lang/Object;
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5303
    .local v0, "clsName":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/IgniteUtils;->isLoadableBy(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5304
    const/4 v1, 0x0

    .line 5310
    .end local v0    # "clsName":Ljava/lang/String;
    :cond_3
    return v1

    .line 5290
    .end local v1    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ldr":Ljava/lang/ClassLoader;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_0

    .line 5300
    .restart local v1    # "found":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ldr":Ljava/lang/ClassLoader;
    .restart local v4    # "obj2":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static hasNearCache(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z
    .locals 6
    .param p0, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 7054
    const-string v5, "org.apache.ignite.cache"

    invoke-interface {p0, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;

    .line 7056
    .local v2, "caches":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    if-eqz v2, :cond_1

    .line 7057
    move-object v0, v2

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 7058
    .local v1, "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->cacheName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7059
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;->nearCacheEnabled()Z

    move-result v5

    .line 7061
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v1    # "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v5

    .line 7057
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .restart local v1    # "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7061
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v1    # "attrs":Lorg/apache/ignite/internal/processors/cache/GridCacheAttributes;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static hasParent(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 2
    .param p0, "parent"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x1

    .line 1940
    if-eqz p0, :cond_0

    .line 1941
    :goto_0
    if-eqz p1, :cond_2

    .line 1942
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1949
    :cond_0
    :goto_1
    return v0

    .line 1941
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    .line 1946
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static hasSharedMemory()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8953
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->hasShmem:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 8954
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8955
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->hasShmem:Ljava/lang/Boolean;

    .line 8968
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->hasShmem:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 8958
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryNativeLoader;->load()V

    .line 8960
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->hasShmem:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8962
    :catch_0
    move-exception v0

    .line 8963
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->hasShmem:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static hash(I)I
    .locals 1
    .param p0, "h"    # I

    .prologue
    .line 7874
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 7875
    const v0, -0x7a143595

    mul-int/2addr p0, v0

    .line 7876
    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 7877
    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    .line 7879
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method public static hash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 7896
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->hash(I)I

    move-result v0

    return v0
.end method

.method public static varargs hashCode([Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p0, "bufs"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 4538
    const/4 v5, 0x1

    .line 4540
    .local v5, "res":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 4541
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 4543
    .local v4, "pos":I
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4544
    mul-int/lit8 v6, v5, 0x1f

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    add-int v5, v6, v7

    goto :goto_1

    .line 4546
    :cond_0
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4549
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "pos":I
    :cond_1
    return v5
.end method

.method public static heapSize(I)D
    .locals 2
    .param p0, "precision"    # I

    .prologue
    .line 943
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->roundedHeapSize(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static heapSize(Ljava/lang/Iterable;I)D
    .locals 10
    .param p1, "precision"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;I)D"
        }
    .end annotation

    .prologue
    .line 905
    .local p0, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-wide/16 v0, 0x0

    .line 907
    .local v0, "heap":D
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->nodesPerJvm(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 908
    .local v4, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v3

    .line 910
    .local v3, "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryInitialized()J

    move-result-wide v6

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v0, v6

    .line 911
    goto :goto_0

    .line 913
    .end local v3    # "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    .end local v4    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->roundedHeapSize(DI)D

    move-result-wide v6

    return-wide v6
.end method

.method public static heapSize(Lorg/apache/ignite/cluster/ClusterNode;I)D
    .locals 2
    .param p0, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p1, "precision"    # I

    .prologue
    .line 893
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->heapSize(Ljava/lang/Iterable;I)D

    move-result-wide v0

    return-wide v0
.end method

.method private static hexCharToByte(C)B
    .locals 3
    .param p0, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2232
    sparse-switch p0, :sswitch_data_0

    .line 2270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hex decoding wrong input character [character="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2243
    :sswitch_0
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    .line 2267
    :goto_0
    return v0

    .line 2247
    :sswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 2251
    :sswitch_2
    const/16 v0, 0xb

    goto :goto_0

    .line 2255
    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 2259
    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    .line 2263
    :sswitch_5
    const/16 v0, 0xe

    goto :goto_0

    .line 2267
    :sswitch_6
    const/16 v0, 0xf

    goto :goto_0

    .line 2232
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_5
        0x46 -> :sswitch_6
        0x61 -> :sswitch_1
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
    .end sparse-switch
.end method

.method public static hexString2ByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 2198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2202
    .local v2, "chars":[C
    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 2204
    .local v1, "bytes":[B
    const/4 v0, 0x0

    .line 2206
    .local v0, "byteCnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 2207
    const/4 v4, 0x0

    .line 2209
    .local v4, "newByte":I
    aget-char v5, v2, v3

    invoke-static {v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->hexCharToByte(C)B

    move-result v5

    or-int/2addr v4, v5

    .line 2211
    shl-int/lit8 v4, v4, 0x4

    .line 2213
    add-int/lit8 v5, v3, 0x1

    aget-char v5, v2, v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->hexCharToByte(C)B

    move-result v5

    or-int/2addr v4, v5

    .line 2215
    int-to-byte v5, v4

    aput-byte v5, v1, v0

    .line 2217
    add-int/lit8 v0, v0, 0x1

    .line 2206
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 2220
    .end local v4    # "newByte":I
    :cond_1
    return-object v1
.end method

.method public static hidePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "uri"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1890
    if-nez p0, :cond_1

    .line 1891
    const/4 p0, 0x0

    .line 1924
    .end local p0    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1893
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_1
    const-string v7, ".*://(.*:.*)@.*"

    invoke-static {v7, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1894
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1896
    .local v5, "userInfoLastIdx":I
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-ne v5, v10, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1898
    :cond_2
    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1900
    .local v4, "str":Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1902
    .local v6, "userInfoStartIdx":I
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1904
    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1906
    .local v3, "params":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1908
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_5

    .line 1911
    aget-object v7, v3, v1

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "idx":I
    if-eq v2, v10, :cond_3

    .line 1912
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 1914
    :cond_3
    aget-object v7, v3, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1916
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_4

    .line 1917
    const/16 v7, 0x3b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1908
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1920
    .end local v2    # "idx":I
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v5, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static id2Node(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6737
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6739
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$21;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/IgniteUtils$21;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    return-object v0
.end method

.method public static id8(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/util/UUID;

    .prologue
    .line 1220
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static id8(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 1235
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteUuid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static igniteUuidToBytes(Lorg/apache/ignite/lang/IgniteUuid;[BI)V
    .locals 3
    .param p0, "uuid"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p1, "out"    # [B
    .param p2, "off"    # I

    .prologue
    .line 4430
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4432
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->longToBytes(J[BI)I

    .line 4433
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->longToBytes(J[BI)I

    .line 4434
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->longToBytes(J[BI)I

    .line 4435
    return-void
.end method

.method public static igniteUuidToBytes(Lorg/apache/ignite/lang/IgniteUuid;)[B
    .locals 2
    .param p0, "uuid"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 4413
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4415
    :cond_0
    const/16 v1, 0x18

    new-array v0, v1, [B

    .line 4417
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->igniteUuidToBytes(Lorg/apache/ignite/lang/IgniteUuid;[BI)V

    .line 4419
    return-object v0
.end method

.method public static inetAddressesComparator(Z)Ljava/util/Comparator;
    .locals 1
    .param p0, "sameHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Comparator",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8767
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$26;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/IgniteUtils$26;-><init>(Z)V

    return-object v0
.end method

.method public static intToBytes(I[BI)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 2362
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->intToBytes(I[BI)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public static intToBytes(I)[B
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 2349
    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->intToBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static interrupt(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4072
    .local p0, "workers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Thread;>;"
    if-eqz p0, :cond_0

    .line 4073
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 4074
    .local v1, "worker":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4075
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "worker":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static interrupt(Ljava/lang/Thread;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4062
    if-eqz p0, :cond_0

    .line 4063
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 4064
    :cond_0
    return-void
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "mtdName"    # Ljava/lang/String;
    .param p3, "paramTypes"    # [Ljava/lang/Class;
    .param p4, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v9, 0x5d

    .line 7460
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 7461
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 7464
    :cond_1
    if-eqz p0, :cond_3

    move-object v1, p0

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_0
    const-class v6, Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p0, v6, :cond_5

    .line 7468
    :try_start_1
    invoke-virtual {v1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 7474
    .local v4, "mtd":Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isAccessible()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 7479
    .local v0, "accessible":Z
    const/4 v6, 0x1

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7481
    invoke-virtual {v4, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 7484
    .local v5, "res":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    .line 7485
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7488
    :cond_2
    return-object v5

    .line 7464
    .end local v0    # "accessible":Z
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "mtd":Ljava/lang/reflect/Method;
    .end local v5    # "res":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 7470
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 7464
    .local v3, "ignored":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 7484
    .end local v3    # "ignored":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "accessible":Z
    .restart local v4    # "mtd":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    if-nez v0, :cond_4

    .line 7485
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 7491
    .end local v0    # "accessible":Z
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "mtd":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 7492
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to invoke [mtdName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cls="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 7496
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to invoke (method was not found) [mtdName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cls="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "mtdName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 7401
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v9, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 7402
    :cond_0
    sget-boolean v9, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    if-nez p2, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 7405
    :cond_1
    if-eqz p0, :cond_3

    move-object v2, p0

    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_0
    const-class v9, Ljava/lang/Object;

    if-eq p0, v9, :cond_9

    .line 7406
    const/4 v7, 0x0

    .line 7408
    .local v7, "mtd":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v3, v1, v5

    .line 7409
    .local v3, "declaredMtd":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 7410
    if-nez v7, :cond_4

    .line 7411
    move-object v7, v3

    .line 7408
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7405
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredMtd":Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mtd":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 7413
    .restart local v1    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "declaredMtd":Ljava/lang/reflect/Method;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "mtd":Ljava/lang/reflect/Method;
    :cond_4
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to invoke (ambigous method name) [mtdName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7438
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredMtd":Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mtd":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 7439
    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to invoke [mtdName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 7418
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "mtd":Ljava/lang/reflect/Method;
    :cond_5
    if-nez v7, :cond_6

    .line 7405
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 7421
    :cond_6
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->isAccessible()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 7426
    .local v0, "accessible":Z
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7428
    invoke-virtual {v7, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 7431
    .local v8, "res":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_7

    .line 7432
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7435
    :cond_7
    return-object v8

    .line 7431
    .end local v8    # "res":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v9

    if-nez v0, :cond_8

    .line 7432
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_8
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 7443
    .end local v0    # "accessible":Z
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mtd":Ljava/lang/reflect/Method;
    :cond_9
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to invoke (method was not found) [mtdName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static isGrid(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 5549
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.ignite.internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHotSpot()Z
    .locals 2

    .prologue
    .line 6046
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplName:Ljava/lang/String;

    const-string v1, "Java HotSpot(TM)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIgnite(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 5539
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.apache.ignite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isIncreasingArray([II)Z
    .locals 4
    .param p0, "arr"    # [I
    .param p1, "len"    # I

    .prologue
    const/4 v1, 0x1

    .line 6366
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 6367
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-ltz p1, :cond_1

    array-length v2, p0

    if-le p1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 6369
    :cond_2
    array-length v2, p0

    if-nez v2, :cond_4

    .line 6377
    :cond_3
    :goto_0
    return v1

    .line 6372
    :cond_4
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 6373
    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    if-lt v2, v3, :cond_5

    .line 6374
    const/4 v1, 0x0

    goto :goto_0

    .line 6372
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isJavaVersionAtLeast(Ljava/lang/String;)Z
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 6019
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->javaRtVer:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->compareVersionNumbers(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJdk(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 5575
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5580
    :cond_0
    :goto_0
    return v1

    .line 5578
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5580
    .local v0, "s":Ljava/lang/String;
    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "javax."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLinux()Z
    .locals 1

    .prologue
    .line 5684
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->linux:Z

    return v0
.end method

.method public static isLoadableBy(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 3
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 5219
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 5221
    :cond_0
    if-nez p1, :cond_1

    .line 5222
    sget-object p1, Lorg/apache/ignite/internal/util/IgniteUtils;->gridClassLoader:Ljava/lang/ClassLoader;

    .line 5224
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->lambdaEnclosingClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5227
    .local v1, "lambdaParent":Ljava/lang/String;
    if-nez v1, :cond_2

    .end local p0    # "clsName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5229
    const/4 v2, 0x1

    .line 5232
    :goto_1
    return v2

    .restart local p0    # "clsName":Ljava/lang/String;
    :cond_2
    move-object p0, v1

    .line 5227
    goto :goto_0

    .line 5231
    .end local p0    # "clsName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5232
    .local v0, "ignore":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized isLocalHostChanged()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1480
    const-class v2, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;

    .line 1482
    .local v0, "locHost0":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->resetLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1480
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isMacInvalidArgumentError(Ljava/lang/Exception;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 8007
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid argument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMacOs()Z
    .locals 1

    .prologue
    .line 5746
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->mac:Z

    return v0
.end method

.method public static isNetWare()Z
    .locals 1

    .prologue
    .line 5755
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->netware:Z

    return v0
.end method

.method public static isNonDecreasingArray([II)Z
    .locals 4
    .param p0, "arr"    # [I
    .param p1, "len"    # I

    .prologue
    const/4 v1, 0x1

    .line 6388
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 6389
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-ltz p1, :cond_1

    array-length v2, p0

    if-le p1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 6391
    :cond_2
    array-length v2, p0

    if-nez v2, :cond_4

    .line 6399
    :cond_3
    :goto_0
    return v1

    .line 6394
    :cond_4
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 6395
    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    if-le v2, v3, :cond_5

    .line 6396
    const/4 v1, 0x0

    goto :goto_0

    .line 6394
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isPow2(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 692
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimitiveArray(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 6785
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 6787
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrimitiveOrWrapper(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 6796
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSolaris()Z
    .locals 1

    .prologue
    .line 5764
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->solaris:Z

    return v0
.end method

.method public static isSolarisSparc()Z
    .locals 1

    .prologue
    .line 5773
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->solaris:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->sparc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSolarisX86()Z
    .locals 1

    .prologue
    .line 5782
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->solaris:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->x86:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSufficientlyTestedOs()Z
    .locals 1

    .prologue
    .line 5900
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win81:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winXp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winVista:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->mac:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->linux:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->solaris:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnix()Z
    .locals 1

    .prologue
    .line 5791
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->unix:Z

    return v0
.end method

.method public static isVisorNodeStartProperty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7593
    const-string v0, "IGNITE_SSH_HOST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IGNITE_SSH_USER_NAME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisorRequiredProperty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7603
    const-string v0, "java.version"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.vm.name"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "os.arch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "os.name"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "os.version"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWindows()Z
    .locals 1

    .prologue
    .line 5800
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win7:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win8:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win81:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winXp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win95:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win98:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winNt:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win2k:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win2003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win2008:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winVista:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->unknownWin:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWindows2003()Z
    .locals 1

    .prologue
    .line 5855
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win2003:Z

    return v0
.end method

.method public static isWindows2008()Z
    .locals 1

    .prologue
    .line 5864
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win2008:Z

    return v0
.end method

.method public static isWindows2k()Z
    .locals 1

    .prologue
    .line 5846
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win2k:Z

    return v0
.end method

.method public static isWindows7()Z
    .locals 1

    .prologue
    .line 5819
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win7:Z

    return v0
.end method

.method public static isWindows8()Z
    .locals 1

    .prologue
    .line 5828
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win8:Z

    return v0
.end method

.method public static isWindows81()Z
    .locals 1

    .prologue
    .line 5837
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win81:Z

    return v0
.end method

.method public static isWindows95()Z
    .locals 1

    .prologue
    .line 5873
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win95:Z

    return v0
.end method

.method public static isWindows98()Z
    .locals 1

    .prologue
    .line 5882
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->win98:Z

    return v0
.end method

.method public static isWindowsNt()Z
    .locals 1

    .prologue
    .line 5891
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winNt:Z

    return v0
.end method

.method public static isWindowsVista()Z
    .locals 1

    .prologue
    .line 5810
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winVista:Z

    return v0
.end method

.method public static isWindowsXp()Z
    .locals 1

    .prologue
    .line 5917
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->winXp:Z

    return v0
.end method

.method public static jdkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5692
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkName:Ljava/lang/String;

    return-object v0
.end method

.method public static jdkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5675
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkStr:Ljava/lang/String;

    return-object v0
.end method

.method public static jdkVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5701
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkVendor:Ljava/lang/String;

    return-object v0
.end method

.method public static jdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5710
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jdkVer:Ljava/lang/String;

    return-object v0
.end method

.method public static jmException(Ljava/lang/Throwable;)Ljavax/management/JMException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 6623
    new-instance v0, Ljavax/management/JMException;

    invoke-direct {v0}, Ljavax/management/JMException;-><init>()V

    .line 6625
    .local v0, "x":Ljavax/management/JMException;
    invoke-virtual {v0, p0}, Ljavax/management/JMException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6627
    return-object v0
.end method

.method public static join(Ljava/lang/Thread;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 7008
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7015
    return-void

    .line 7010
    :catch_0
    move-exception v0

    .line 7011
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 7013
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static join(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 2
    .param p0, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 6966
    if-eqz p0, :cond_0

    .line 6967
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6974
    :cond_0
    return-void

    .line 6969
    :catch_0
    move-exception v0

    .line 6970
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6972
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z
    .locals 4
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/util/worker/GridWorker;",
            ">;",
            "Lorg/apache/ignite/IgniteLogger;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4189
    .local p0, "ws":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/util/worker/GridWorker;>;"
    const/4 v1, 0x1

    .line 4191
    .local v1, "retval":Z
    if-eqz p0, :cond_1

    .line 4192
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/worker/GridWorker;

    .line 4193
    .local v2, "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    invoke-static {v2, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4194
    const/4 v1, 0x0

    goto :goto_0

    .line 4196
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "w":Lorg/apache/ignite/internal/util/worker/GridWorker;
    :cond_1
    return v1
.end method

.method public static join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z
    .locals 3
    .param p0, "t"    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 4086
    if-eqz p0, :cond_0

    .line 4088
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4100
    :cond_0
    :goto_0
    return v1

    .line 4092
    :catch_0
    move-exception v0

    .line 4093
    .local v0, "ignore":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got interrupted while waiting for completion of a thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 4095
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4097
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z
    .locals 3
    .param p0, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4165
    if-eqz p0, :cond_0

    .line 4167
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4177
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 4169
    :catch_0
    move-exception v0

    .line 4170
    .local v0, "ignore":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got interrupted while waiting for completion of runnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 4172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs join([[B)[B
    .locals 9
    .param p0, "bufs"    # [[B

    .prologue
    .line 2127
    const/4 v6, 0x0

    .line 2128
    .local v6, "size":I
    move-object v0, p0

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2129
    .local v1, "buf":[B
    array-length v7, v1

    add-int/2addr v6, v7

    .line 2128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2132
    .end local v1    # "buf":[B
    :cond_0
    new-array v5, v6, [B

    .line 2133
    .local v5, "res":[B
    const/4 v4, 0x0

    .line 2134
    .local v4, "position":I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2135
    .restart local v1    # "buf":[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v5, v4, v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->arrayCopy([BI[BII)I

    .line 2136
    array-length v7, v1

    add-int/2addr v4, v7

    .line 2134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2139
    .end local v1    # "buf":[B
    :cond_1
    return-object v5
.end method

.method public static joinThreads(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z
    .locals 4
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Thread;",
            ">;",
            "Lorg/apache/ignite/IgniteLogger;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4112
    .local p0, "workers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Thread;>;"
    const/4 v1, 0x1

    .line 4114
    .local v1, "retval":Z
    if-eqz p0, :cond_1

    .line 4115
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 4116
    .local v2, "worker":Ljava/lang/Thread;
    invoke-static {v2, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4117
    const/4 v1, 0x0

    goto :goto_0

    .line 4119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "worker":Ljava/lang/Thread;
    :cond_1
    return v1
.end method

.method public static jreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6028
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->javaRtName:Ljava/lang/String;

    return-object v0
.end method

.method public static jreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6037
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->javaRtVer:Ljava/lang/String;

    return-object v0
.end method

.method public static jvmArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7920
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static jvmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5953
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplName:Ljava/lang/String;

    return-object v0
.end method

.method public static jvmPid()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 7904
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 7907
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 7909
    .local v0, "idx":I
    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 7912
    .end local v0    # "idx":I
    :cond_0
    :goto_0
    return v3

    .line 7911
    :catch_0
    move-exception v1

    .line 7912
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static jvmSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5926
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmSpecName:Ljava/lang/String;

    return-object v0
.end method

.method public static jvmVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5944
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplVendor:Ljava/lang/String;

    return-object v0
.end method

.method public static jvmVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5935
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->jvmImplVer:Ljava/lang/String;

    return-object v0
.end method

.method public static lambdaEnclosingClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "clsName"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 8417
    const-string v1, "$$Lambda$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8419
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 3801
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3803
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3805
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3806
    return-void
.end method

.method public static log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "longMsg"    # Ljava/lang/Object;
    .param p2, "shortMsg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 3776
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3777
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3779
    :cond_1
    if-eqz p0, :cond_3

    .line 3780
    invoke-interface {p0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3781
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 3785
    :cond_2
    :goto_0
    return-void

    .line 3784
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->quiet(Z[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static logResolveFailed(Ljava/lang/Class;Ljava/lang/Exception;)V
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 3099
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve IGNITE_HOME automatically for class codebase [class="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 3101
    return-void

    .line 3099
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", e="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .locals 3
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation

    .prologue
    .line 7205
    .local p1, "logRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/apache/ignite/IgniteLogger;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteLogger;

    .line 7207
    .local v0, "log":Lorg/apache/ignite/IgniteLogger;
    if-nez v0, :cond_0

    .line 7208
    const/4 v1, 0x0

    invoke-interface {p0, p2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7210
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "log":Lorg/apache/ignite/IgniteLogger;
    check-cast v0, Lorg/apache/ignite/IgniteLogger;

    .line 7213
    .restart local v0    # "log":Lorg/apache/ignite/IgniteLogger;
    :cond_0
    return-object v0
.end method

.method public static logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
    .locals 3
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation

    .prologue
    .line 7185
    .local p1, "logRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lorg/apache/ignite/IgniteLogger;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteLogger;

    .line 7187
    .local v0, "log":Lorg/apache/ignite/IgniteLogger;
    if-nez v0, :cond_0

    .line 7188
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7190
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "log":Lorg/apache/ignite/IgniteLogger;
    check-cast v0, Lorg/apache/ignite/IgniteLogger;

    .line 7193
    .restart local v0    # "log":Lorg/apache/ignite/IgniteLogger;
    :cond_0
    return-object v0
.end method

.method public static longToBytes(J[BI)I
    .locals 2
    .param p0, "l"    # J
    .param p2, "bytes"    # [B
    .param p3, "off"    # I

    .prologue
    .line 2339
    invoke-static {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->longToBytes(J[BI)I

    move-result v0

    add-int/2addr v0, p3

    return v0
.end method

.method public static longToBytes(J)[B
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 2326
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static makeCacheMBeanName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 4
    .param p0, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MalformedObjectNameException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 3964
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->JMX_DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 3966
    .local v0, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->appendJvmId(Lorg/apache/ignite/internal/util/typedef/internal/SB;)V

    .line 3968
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3969
    const-string v1, "grid="

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3971
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3973
    const-string v1, "group="

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3975
    const-string v1, "name="

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3977
    new-instance v1, Ljavax/management/ObjectName;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static makeMBeanName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 4
    .param p0, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "grp"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MalformedObjectNameException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 3915
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->JMX_DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 3917
    .local v0, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->appendJvmId(Lorg/apache/ignite/internal/util/typedef/internal/SB;)V

    .line 3919
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3920
    const-string v1, "grid="

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3922
    :cond_0
    if-eqz p1, :cond_1

    .line 3923
    const-string v1, "group="

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3925
    :cond_1
    const-string v1, "name="

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3927
    new-instance v1, Ljavax/management/ObjectName;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static maskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3949
    if-nez p0, :cond_0

    const-string p0, "default"

    .end local p0    # "cacheName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static microTime()J
    .locals 4

    .prologue
    .line 674
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 3017
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3019
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static neighborhood(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 8081
    .local p0, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8083
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 8084
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v5, "org.apache.ignite.macs"

    invoke-interface {v3, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8086
    .local v1, "macs":Ljava/lang/String;
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing MACs attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 8088
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 8090
    .local v4, "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez v4, :cond_1

    .line 8091
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v4    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8093
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8096
    .end local v1    # "macs":Ljava/lang/String;
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v4    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    return-object v2
.end method

.method private static nestedPeerDeployAware(Ljava/lang/Object;ZLjava/util/Set;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 17
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "top"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5442
    .local p2, "processed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 5443
    const/4 v12, 0x0

    .line 5529
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v12

    .line 5445
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    instance-of v15, v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v15, :cond_b

    move-object/from16 v12, p0

    .line 5446
    check-cast v12, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 5448
    .local v12, "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    if-nez p1, :cond_2

    invoke-interface {v12}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v15

    if-nez v15, :cond_0

    .line 5451
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v15, Ljava/lang/Object;

    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 5454
    sget-object v15, Lorg/apache/ignite/internal/util/IgniteUtils;->p2pFields:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 5456
    .local v13, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/reflect/Field;>;>;"
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v4, 0x1

    .line 5458
    .local v4, "cached":Z
    :goto_2
    if-eqz v4, :cond_9

    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    move-object v7, v15

    .line 5460
    .local v7, "fields":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Field;>;"
    :goto_3
    if-nez v4, :cond_3

    .line 5461
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t2()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v13

    .line 5463
    invoke-virtual {v13, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 5466
    :cond_3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 5468
    .local v6, "f":Ljava/lang/reflect/Field;
    if-nez v4, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "this$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "val$"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 5469
    :cond_5
    if-nez v4, :cond_7

    .line 5470
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5472
    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_6

    .line 5473
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v13, v15}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 5475
    :cond_6
    invoke-virtual {v13}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5479
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 5481
    .local v11, "o":Ljava/lang/Object;
    if-eqz v11, :cond_4

    .line 5483
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v11, v15, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->nestedPeerDeployAware(Ljava/lang/Object;ZLjava/util/Set;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v12

    .line 5485
    if-eqz v12, :cond_4

    .line 5486
    if-nez v4, :cond_0

    .line 5489
    sget-object v15, Lorg/apache/ignite/internal/util/IgniteUtils;->p2pFields:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v13}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 5495
    .end local v11    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 5496
    .local v9, "ignored":Ljava/lang/IllegalAccessException;
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 5456
    .end local v4    # "cached":Z
    .end local v6    # "f":Ljava/lang/reflect/Field;
    .end local v7    # "fields":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Field;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "ignored":Ljava/lang/IllegalAccessException;
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 5458
    .restart local v4    # "cached":Z
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_3

    .line 5451
    .restart local v7    # "fields":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Field;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto/16 :goto_1

    .line 5502
    .end local v4    # "cached":Z
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fields":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Field;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .end local v13    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/util/Collection<Ljava/lang/reflect/Field;>;>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/ignite/internal/util/IgniteUtils;->isIgnite(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 5503
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 5504
    :cond_c
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/Iterable;

    if-eqz v15, :cond_e

    .line 5505
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 5507
    .restart local v11    # "o":Ljava/lang/Object;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v11, v15, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->nestedPeerDeployAware(Ljava/lang/Object;ZLjava/util/Set;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v12

    .line 5509
    .restart local v12    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    if-eqz v12, :cond_d

    goto/16 :goto_0

    .line 5512
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 5513
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    .line 5516
    .local v14, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-nez v15, :cond_f

    invoke-static {v14}, Lorg/apache/ignite/internal/util/IgniteUtils;->isJdk(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 5517
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object/from16 v2, p0

    check-cast v2, [Ljava/lang/Object;

    .line 5519
    .local v2, "arr":[Ljava/lang/Object;
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v10, :cond_f

    aget-object v11, v3, v8

    .line 5521
    .restart local v11    # "o":Ljava/lang/Object;
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v11, v15, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->nestedPeerDeployAware(Ljava/lang/Object;ZLjava/util/Set;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v12

    .line 5523
    .restart local v12    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    if-nez v12, :cond_0

    .line 5519
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5529
    .end local v2    # "arr":[Ljava/lang/Object;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .end local v14    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public static newHashMap(I)Ljava/util/HashMap;
    .locals 2
    .param p0, "expSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 8722
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newHashSet(I)Ljava/util/HashSet;
    .locals 2
    .param p0, "expSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8745
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 1116
    const/4 v2, 0x0

    .line 1118
    .local v2, "set":Z
    const/4 v0, 0x0

    .line 1121
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1123
    if-nez v0, :cond_1

    .line 1124
    const/4 v3, 0x0

    .line 1140
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    :goto_0
    return-object v3

    .line 1126
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1127
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1129
    const/4 v2, 0x1

    .line 1132
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1140
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find empty constructor for class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1140
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 1141
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_3
    throw v3

    .line 1137
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1138
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    :try_start_3
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create new instance for class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1137
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v3

    move-object v1, v3

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v1, v3

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "cls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1099
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1105
    .local v0, "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1101
    .end local v0    # "cls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static newLinkedHashMap(I)Ljava/util/LinkedHashMap;
    .locals 2
    .param p0, "expSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 8734
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedHashSet(I)Ljava/util/LinkedHashSet;
    .locals 2
    .param p0, "expSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8756
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public static nl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7173
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    return-object v0
.end method

.method public static nodeIdLogFileName(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "nodeId"    # Ljava/util/UUID;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2d

    .line 7718
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 7719
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 7721
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7723
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 7725
    .local v0, "dot":I
    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 7726
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7728
    :goto_0
    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static nodeIds(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7091
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static nodes2names(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7129
    .local p0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/IgniteUtils$25;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/IgniteUtils$25;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static nodesPerJvm(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 926
    .local v1, "grpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 927
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "org.apache.ignite.macs"

    invoke-interface {v3, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "org.apache.ignite.jvm.pid"

    invoke-interface {v3, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "grpId":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 930
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 933
    .end local v0    # "grpId":Ljava/lang/String;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method public static nullifyHomeDirectory()V
    .locals 1

    .prologue
    .line 8344
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 8345
    return-void
.end method

.method static nullifyWorkDirectory()V
    .locals 1

    .prologue
    .line 8351
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->igniteWork:Ljava/lang/String;

    .line 8352
    return-void
.end method

.method public static objectConstructor()Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->OBJECT_CTOR:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public static oldest(Ljava/util/Collection;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 8
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 8446
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v4, 0x0

    .line 8448
    .local v4, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    const-wide v2, 0x7fffffffffffffffL

    .line 8450
    .local v2, "minOrder":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 8451
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_0

    .line 8452
    move-object v4, v1

    .line 8454
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    goto :goto_0

    .line 8458
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-object v4
.end method

.method public static onGridStart()V
    .locals 4

    .prologue
    .line 2785
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 2786
    :try_start_0
    sget v0, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    if-nez v0, :cond_1

    .line 2787
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2789
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/apache/ignite/internal/util/IgniteUtils$19;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/IgniteUtils$19;-><init>()V

    const-string v3, "ignite-clock"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    .line 2805
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2807
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 2809
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2812
    :cond_1
    sget v0, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    .line 2813
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2814
    return-void
.end method

.method public static onGridStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2821
    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 2823
    :try_start_0
    sget v1, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    if-nez v1, :cond_0

    .line 2824
    monitor-exit v2

    .line 2838
    .local v0, "timer0":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2826
    .end local v0    # "timer0":Ljava/lang/Thread;
    :cond_0
    sget v1, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    .line 2828
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    .line 2830
    .restart local v0    # "timer0":Ljava/lang/Thread;
    sget v1, Lorg/apache/ignite/internal/util/IgniteUtils;->gridCnt:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2831
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->timer:Ljava/lang/Thread;

    .line 2833
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2835
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 2837
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static osArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5719
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->osArch:Ljava/lang/String;

    return-object v0
.end method

.method public static osJdkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5657
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->osJdkStr:Ljava/lang/String;

    return-object v0
.end method

.method public static osName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5728
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public static osString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5666
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->osStr:Ljava/lang/String;

    return-object v0
.end method

.method public static osVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5737
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->osVer:Ljava/lang/String;

    return-object v0
.end method

.method public static overridesEqualsAndHashCode(Ljava/lang/Object;)Z
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7990
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7992
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Object;

    const-string v5, "equals"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Ljava/lang/Object;

    const-string v5, "hashCode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 7996
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move v2, v3

    .line 7992
    goto :goto_0

    .line 7995
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 7996
    .local v1, "ignore":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 7995
    .end local v1    # "ignore":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static p2pLoader(Ljava/lang/ClassLoader;)Z
    .locals 1
    .param p0, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 6716
    instance-of v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    return v0
.end method

.method public static p2pLoader(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 6706
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->p2pLoader(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pad(I)Ljava/lang/String;
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 2618
    new-array v0, p0, [C

    .line 2620
    .local v0, "dash":[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 2622
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "ptrn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 6694
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6696
    .local v0, "format":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static parseIsoDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 6444
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v8, "+-:.TZ"

    const/4 v9, 0x1

    invoke-direct {v4, p0, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6446
    .local v4, "t":Ljava/util/StringTokenizer;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6447
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 6450
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6451
    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6455
    const-string v8, "-"

    invoke-static {v4, v8, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->checkNextToken(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6456
    const/4 v8, 0x2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6460
    const-string v8, "-"

    invoke-static {v4, v8, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->checkNextToken(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6461
    const/4 v8, 0x5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6465
    const-string v8, "T"

    invoke-static {v4, v8, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->checkNextToken(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6466
    const/16 v8, 0xb

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6476
    const-string v8, ":"

    invoke-static {v4, v8, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->checkNextToken(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6477
    const/16 v8, 0xc

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6486
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_3

    .line 6565
    :cond_0
    :goto_0
    return-object v0

    .line 6468
    :cond_1
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6469
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6470
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6471
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6561
    :catch_0
    move-exception v1

    .line 6562
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 6479
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v8, 0xc

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6480
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6481
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 6489
    :cond_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 6491
    .local v5, "tok":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 6492
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6493
    const/16 v8, 0xd

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6495
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6498
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 6500
    const-string v8, "."

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6501
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 6503
    .local v2, "nt":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v9, :cond_4

    .line 6504
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 6506
    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6508
    const/16 v8, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6510
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6513
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 6526
    .end local v2    # "nt":Ljava/lang/String;
    :goto_2
    const-string v8, "Z"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 6527
    const-string v8, "+"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "-"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 6528
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6516
    :cond_5
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 6519
    :cond_6
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6522
    :cond_7
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 6523
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 6530
    :cond_8
    const-string v8, "+"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 6532
    .local v3, "plus":Z
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_9

    .line 6533
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6535
    :cond_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 6540
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    .line 6541
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 6542
    .local v6, "tzHour":I
    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 6553
    .local v7, "tzMin":I
    :goto_3
    if-eqz v3, :cond_c

    .line 6554
    const/16 v8, 0xf

    mul-int/lit8 v9, v6, 0x3c

    add-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 6545
    .end local v6    # "tzHour":I
    .end local v7    # "tzMin":I
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 6547
    .restart local v6    # "tzHour":I
    const-string v8, ":"

    invoke-static {v4, v8, p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->checkNextToken(Ljava/util/StringTokenizer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6548
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "tzMin":I
    goto :goto_3

    .line 6550
    .end local v7    # "tzMin":I
    :cond_b
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6556
    .restart local v7    # "tzMin":I
    :cond_c
    const/16 v8, 0xf

    mul-int/lit8 v9, v6, 0x3c

    add-int/2addr v9, v7

    neg-int v9, v9

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 6559
    .end local v3    # "plus":Z
    .end local v6    # "tzHour":I
    .end local v7    # "tzMin":I
    :cond_d
    const-string v8, "GMT"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5395
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 5397
    :cond_0
    instance-of v1, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v1, :cond_1

    .line 5398
    check-cast p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 5402
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object p0

    .line 5400
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "obj":Ljava/lang/Object;
    move-object v0, p0

    .line 5402
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_1
    new-instance p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils$20;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 5400
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public static peerDeployAware0(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 7
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;"
        }
    .end annotation

    .prologue
    .line 5248
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5249
    sget-boolean v5, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 5252
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5254
    .local v4, "tmpC":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5255
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5257
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    invoke-interface {v4, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5259
    const/4 v2, 0x0

    .line 5261
    .local v2, "notAllNulls":Z
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5262
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 5263
    const/4 v2, 0x1

    .line 5265
    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/IgniteUtils;->hasCommonClassLoader(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5266
    if-ne v3, p0, :cond_3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v5

    .line 5276
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "notAllNulls":Z
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "tmpC":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_1
    return-object v5

    .line 5266
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "notAllNulls":Z
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v4    # "tmpC":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_3
    invoke-static {v3}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware0(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v5

    goto :goto_1

    .line 5271
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_4
    if-eqz v2, :cond_5

    .line 5272
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Failed to find common class loader for all elements in given collection. Peer deployment cannot be performed for such collection."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5276
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "notAllNulls":Z
    .end local v4    # "tmpC":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_5
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v5

    goto :goto_1
.end method

.method public static peerDeployAware0(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5379
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_0

    .line 5380
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware0(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    .line 5385
    .restart local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 5382
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isPrimitiveArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5383
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware0([Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    goto :goto_0

    .line 5385
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs peerDeployAware0([Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .locals 14
    .param p0, "c"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 5326
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 5327
    sget-boolean v12, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    if-nez p0, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 5329
    :cond_0
    const/4 v9, 0x0

    .line 5331
    .local v9, "notAllNulls":Z
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_7

    aget-object v10, v0, v5

    .line 5332
    .local v10, "obj":Ljava/lang/Object;
    if-eqz v10, :cond_6

    .line 5333
    const/4 v9, 0x1

    .line 5335
    instance-of v12, v10, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v12, :cond_2

    move-object v12, v10

    check-cast v12, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v12}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 5338
    .local v6, "ldr":Ljava/lang/ClassLoader;
    :goto_1
    const/4 v3, 0x1

    .line 5340
    .local v3, "found":Z
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v8, :cond_4

    aget-object v11, v1, v4

    .line 5341
    .local v11, "obj2":Ljava/lang/Object;
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_3

    .line 5340
    .end local v11    # "obj2":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5335
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "found":Z
    .end local v4    # "i$":I
    .end local v6    # "ldr":Ljava/lang/ClassLoader;
    .end local v8    # "len$":I
    .restart local v5    # "i$":I
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    goto :goto_1

    .line 5345
    .end local v5    # "i$":I
    .restart local v1    # "arr$":[Ljava/lang/Object;
    .restart local v3    # "found":Z
    .restart local v4    # "i$":I
    .restart local v6    # "ldr":Ljava/lang/ClassLoader;
    .restart local v8    # "len$":I
    .restart local v11    # "obj2":Ljava/lang/Object;
    :cond_3
    instance-of v12, v11, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v12, :cond_5

    check-cast v11, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .end local v11    # "obj2":Ljava/lang/Object;
    invoke-interface {v11}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5348
    .local v2, "clsName":Ljava/lang/String;
    :goto_3
    invoke-static {v2, v6}, Lorg/apache/ignite/internal/util/IgniteUtils;->isLoadableBy(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 5349
    const/4 v3, 0x0

    .line 5355
    .end local v2    # "clsName":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_6

    .line 5356
    invoke-static {v10}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware0(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v12

    .line 5366
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "found":Z
    .end local v4    # "i$":I
    .end local v6    # "ldr":Ljava/lang/ClassLoader;
    .end local v8    # "len$":I
    .end local v9    # "notAllNulls":Z
    .end local v10    # "obj":Ljava/lang/Object;
    :goto_4
    return-object v12

    .line 5345
    .restart local v1    # "arr$":[Ljava/lang/Object;
    .restart local v3    # "found":Z
    .restart local v4    # "i$":I
    .restart local v6    # "ldr":Ljava/lang/ClassLoader;
    .restart local v8    # "len$":I
    .restart local v9    # "notAllNulls":Z
    .restart local v10    # "obj":Ljava/lang/Object;
    .restart local v11    # "obj2":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 5331
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "found":Z
    .end local v4    # "i$":I
    .end local v6    # "ldr":Ljava/lang/ClassLoader;
    .end local v8    # "len$":I
    .end local v11    # "obj2":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 5361
    .end local v10    # "obj":Ljava/lang/Object;
    :cond_7
    if-eqz v9, :cond_8

    .line 5362
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Failed to find common class loader for all elements in given collection. Peer deployment cannot be performed for such collection."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 5366
    .end local v5    # "i$":I
    .end local v9    # "notAllNulls":Z
    :cond_8
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v12}, Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v12

    goto :goto_4
.end method

.method public static printConcurrentHashMapInfo(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 7246
    .local p0, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    sget-boolean v17, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 7248
    :cond_0
    const-string v17, "segments"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    .line 7250
    .local v13, "segs":[Ljava/lang/Object;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Concurrent map stats [identityHash= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", segsCnt="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v13

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7253
    const/4 v7, 0x0

    .line 7255
    .local v7, "emptySegsCnt":I
    const/16 v16, 0x0

    .line 7257
    .local v16, "totalCollisions":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 7258
    aget-object v17, v13, v9

    const-string v18, "count"

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/IgniteUtils;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 7260
    .local v12, "segCnt":I
    if-nez v12, :cond_2

    .line 7261
    add-int/lit8 v7, v7, 0x1

    .line 7257
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 7266
    :cond_2
    aget-object v17, v13, v9

    const-string/jumbo v18, "table"

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/IgniteUtils;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    .line 7268
    .local v14, "tab":[Ljava/lang/Object;
    array-length v15, v14

    .line 7270
    .local v15, "tabLen":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    Segment-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " [count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", len="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7273
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 7275
    .local v4, "bucketsStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object v2, v14

    .local v2, "arr$":[Ljava/lang/Object;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_6

    aget-object v8, v2, v10

    .line 7276
    .local v8, "entry":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 7278
    .local v5, "cnt":I
    :goto_2
    if-eqz v8, :cond_3

    .line 7279
    add-int/lit8 v5, v5, 0x1

    .line 7281
    const-string v17, "next"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 7284
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7286
    .local v3, "bucketCnt":Ljava/lang/Integer;
    if-nez v3, :cond_4

    .line 7287
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7289
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7291
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7293
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_5

    .line 7294
    add-int/lit8 v17, v5, -0x1

    add-int v16, v16, v17

    .line 7275
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 7297
    .end local v3    # "bucketCnt":Ljava/lang/Integer;
    .end local v5    # "cnt":I
    .end local v8    # "entry":Ljava/lang/Object;
    :cond_6
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 7298
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "        Buckets with count "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 7301
    .end local v2    # "arr$":[Ljava/lang/Object;
    .end local v4    # "bucketsStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v12    # "segCnt":I
    .end local v14    # "tab":[Ljava/lang/Object;
    .end local v15    # "tabLen":I
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    Map summary [emptySegs="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", collisions="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x5d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7302
    return-void
.end method

.method private static printSynchronizersInfo([Ljava/lang/management/LockInfo;Lorg/apache/ignite/internal/util/GridStringBuilder;)V
    .locals 6
    .param p0, "syncs"    # [Ljava/lang/management/LockInfo;
    .param p1, "sb"    # Lorg/apache/ignite/internal/util/GridStringBuilder;

    .prologue
    .line 1035
    const-string v4, "    Locked synchronizers:"

    invoke-virtual {p1, v4}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1037
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/management/LockInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1038
    .local v2, "info":Ljava/lang/management/LockInfo;
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    const-string v5, "        "

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v2    # "info":Ljava/lang/management/LockInfo;
    :cond_0
    return-void
.end method

.method private static printThreadInfo(Ljava/lang/management/ThreadInfo;Lorg/apache/ignite/internal/util/GridStringBuilder;)V
    .locals 12
    .param p0, "threadInfo"    # Ljava/lang/management/ThreadInfo;
    .param p1, "sb"    # Lorg/apache/ignite/internal/util/GridStringBuilder;

    .prologue
    .line 997
    const-string v9, "Thread [name=\""

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, "\", id="

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, ", state="

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, ", blockCnt="

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getBlockedCount()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, ", waitCnt="

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getWaitedCount()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1003
    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getLockInfo()Ljava/lang/management/LockInfo;

    move-result-object v6

    .line 1005
    .local v6, "lockInfo":Ljava/lang/management/LockInfo;
    if-eqz v6, :cond_0

    .line 1006
    const-string v9, "    Lock [object="

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, ", ownerName="

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, ", ownerId="

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    sget-object v10, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1011
    :cond_0
    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object v8

    .line 1012
    .local v8, "monitors":[Ljava/lang/management/MonitorInfo;
    invoke-virtual {p0}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1014
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_3

    .line 1015
    aget-object v1, v2, v3

    .line 1017
    .local v1, "e":Ljava/lang/StackTraceElement;
    const-string v9, "        at "

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1019
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/management/MonitorInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 1020
    .local v7, "monitor":Ljava/lang/management/MonitorInfo;
    invoke-virtual {v7}, Ljava/lang/management/MonitorInfo;->getLockedStackDepth()I

    move-result v9

    if-ne v9, v3, :cond_1

    .line 1021
    sget-object v9, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    const-string v10, "        - locked "

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1019
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1024
    .end local v7    # "monitor":Ljava/lang/management/MonitorInfo;
    :cond_2
    sget-object v9, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1026
    .end local v0    # "arr$":[Ljava/lang/management/MonitorInfo;
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_3
    return-void
.end method

.method public static productVersion(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/lang/IgniteProductVersion;
    .locals 4
    .param p0, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 6003
    const-string v2, "org.apache.ignite.build.ver"

    invoke-interface {p0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6004
    .local v1, "verStr":Ljava/lang/String;
    const-string v2, "org.apache.ignite.build.date"

    invoke-interface {p0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6006
    .local v0, "buildDate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 6007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6009
    :cond_0
    invoke-static {v1}, Lorg/apache/ignite/lang/IgniteProductVersion;->fromString(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v2

    return-object v2
.end method

.method public static property(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 7508
    sget-boolean v4, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 7509
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 7515
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7521
    .local v3, "m":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_1
    sget-boolean v4, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7534
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 7535
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get property value [property="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 7517
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 7518
    .local v2, "ignored":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .restart local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 7523
    .end local v2    # "ignored":Ljava/lang/NoSuchMethodException;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 7526
    .local v0, "accessible":Z
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7528
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 7531
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static varargs quiet(Z[Ljava/lang/Object;)V
    .locals 9
    .param p0, "err"    # Z
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 3860
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 3862
    :cond_0
    sget-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->SHORT_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 3864
    .local v6, "time":Ljava/lang/String;
    new-instance v5, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 3866
    .local v5, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 3867
    .local v3, "obj":Ljava/lang/Object;
    const/16 v7, 0x5b

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->NL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 3866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3869
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 3871
    .local v4, "ps":Ljava/io/PrintStream;
    :goto_1
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 3872
    return-void

    .line 3869
    .end local v4    # "ps":Ljava/io/PrintStream;
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_1
.end method

.method public static quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3881
    invoke-interface {p0}, Lorg/apache/ignite/IgniteLogger;->isQuiet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3882
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quiet(Z[Ljava/lang/Object;)V

    .line 3884
    :cond_0
    invoke-interface {p0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3885
    invoke-interface {p0, p1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 3886
    :cond_1
    return-void
.end method

.method public static quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 0
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 3701
    invoke-static {p0, p1, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3702
    return-void
.end method

.method public static quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "shortMsg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 3712
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 3714
    invoke-interface {p0}, Lorg/apache/ignite/IgniteLogger;->isQuiet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3715
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->quiet(Z[Ljava/lang/Object;)V

    .line 3716
    :cond_0
    return-void
.end method

.method public static randomIterable(Ljava/util/Collection;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2643
    .local p0, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2645
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 2647
    return-object v0
.end method

.method public static reachable(Ljava/net/InetAddress;I)Z
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "reachTimeout"    # I

    .prologue
    .line 1703
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1706
    :goto_0
    return v1

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "ignore":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static reachable(Ljava/net/NetworkInterface;Ljava/net/InetAddress;I)Z
    .locals 3
    .param p0, "itf"    # Ljava/net/NetworkInterface;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "reachTimeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 1687
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v2, p2}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1690
    :goto_0
    return v1

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static readArray(Ljava/io/ObjectInput;)[Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1281
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 1283
    .local v2, "len":I
    const/4 v0, 0x0

    .line 1285
    .local v0, "arr":[Ljava/lang/Object;
    if-lez v2, :cond_0

    .line 1286
    new-array v0, v2, [Ljava/lang/Object;

    .line 1288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1289
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static readBooleanArray(Ljava/io/DataInput;)[Z
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4496
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 4498
    .local v1, "len":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 4499
    const/4 v2, 0x0

    .line 4506
    :cond_0
    return-object v2

    .line 4501
    :cond_1
    new-array v2, v1, [Z

    .line 4503
    .local v2, "res":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4504
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 4503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readByteArray(Ljava/io/DataInput;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2035
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2037
    .local v0, "len":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2038
    const/4 v1, 0x0

    .line 2044
    :goto_0
    return-object v1

    .line 2040
    :cond_0
    new-array v1, v0, [B

    .line 2042
    .local v1, "res":[B
    invoke-interface {p0, v1}, Ljava/io/DataInput;->readFully([B)V

    goto :goto_0
.end method

.method public static varargs readByteArray([Ljava/nio/ByteBuffer;)[B
    .locals 9
    .param p0, "bufs"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 2054
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2056
    :cond_0
    const/4 v7, 0x0

    .line 2058
    .local v7, "size":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 2059
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v7, v8

    .line 2058
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2061
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    new-array v6, v7, [B

    .line 2063
    .local v6, "res":[B
    const/4 v5, 0x0

    .line 2065
    .local v5, "off":I
    move-object v0, p0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v0, v2

    .line 2066
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 2068
    .local v3, "len":I
    if-eqz v3, :cond_2

    .line 2069
    invoke-virtual {v1, v6, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2071
    add-int/2addr v5, v3

    .line 2065
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2075
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "len":I
    :cond_3
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_4

    array-length v8, v6

    if-eq v5, v8, :cond_4

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 2077
    :cond_4
    return-object v6
.end method

.method public static readByteList(Ljava/io/DataInput;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2106
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 2109
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2110
    const/4 v0, 0x0

    .line 2117
    :cond_0
    return-object v0

    .line 2112
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2114
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2115
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readBytesList(Ljava/io/DataInput;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1978
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1980
    .local v2, "size":I
    if-gez v2, :cond_1

    .line 1981
    const/4 v1, 0x0

    .line 1988
    :cond_0
    return-object v1

    .line 1983
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1985
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1986
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1985
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readClassArray(Ljava/io/ObjectInput;)[Ljava/lang/Class;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1304
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 1306
    .local v2, "len":I
    const/4 v0, 0x0

    .line 1308
    .local v0, "arr":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-lez v2, :cond_0

    .line 1309
    new-array v0, v2, [Ljava/lang/Class;

    .line 1311
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1312
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v0, v1

    .line 1311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1315
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;
    .locals 1
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1360
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->readList(Ljava/io/ObjectInput;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFileToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2922
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2924
    .local v1, "input":Ljava/io/Reader;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 2926
    .local v3, "output":Ljava/io/StringWriter;
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 2930
    .local v0, "buf":[C
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, "n":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2931
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 2933
    :cond_0
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static readGridUuid(J)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 14
    .param p0, "ptr"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 8539
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const-wide/16 v12, 0x1

    add-long v8, p0, v12

    .end local p0    # "ptr":J
    .local v8, "ptr":J
    invoke-virtual {v1, v10, p0, p1}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8540
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v8, v9}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v6

    .line 8542
    .local v6, "most":J
    const-wide/16 v10, 0x8

    add-long p0, v8, v10

    .line 8544
    .end local v8    # "ptr":J
    .restart local p0    # "ptr":J
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    .line 8546
    .local v2, "least":J
    const-wide/16 v10, 0x8

    add-long/2addr p0, v10

    .line 8548
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v6, v7, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 8550
    .local v0, "globalId":Ljava/util/UUID;
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v4

    .line 8552
    .local v4, "locId":J
    new-instance v1, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v1, v0, v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    .line 8555
    .end local v0    # "globalId":Ljava/util/UUID;
    .end local v2    # "least":J
    .end local v4    # "locId":J
    .end local v6    # "most":J
    .end local p0    # "ptr":J
    :goto_0
    return-object v1

    .restart local v8    # "ptr":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 8
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4392
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4393
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 4394
    .local v6, "most":J
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 4396
    .local v2, "least":J
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v6, v7, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUuidCache;->onIgniteUuidRead(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v0

    .line 4398
    .local v0, "globalId":Ljava/util/UUID;
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    .line 4400
    .local v4, "locId":J
    new-instance v1, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v1, v0, v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    .line 4403
    .end local v0    # "globalId":Ljava/util/UUID;
    .end local v2    # "least":J
    .end local v4    # "locId":J
    .end local v6    # "most":J
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readGridUuid([BJ)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 13
    .param p0, "arr"    # [B
    .param p1, "off"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 8515
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v10, 0x1

    add-long v8, p1, v10

    .end local p1    # "off":J
    .local v8, "off":J
    invoke-virtual {v1, p0, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8516
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    .line 8518
    .local v6, "most":J
    const-wide/16 v10, 0x8

    add-long p1, v8, v10

    .line 8520
    .end local v8    # "off":J
    .restart local p1    # "off":J
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 8522
    .local v2, "least":J
    const-wide/16 v10, 0x8

    add-long/2addr p1, v10

    .line 8524
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v6, v7, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 8526
    .local v0, "globalId":Ljava/util/UUID;
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 8528
    .local v4, "locId":J
    new-instance v1, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v1, v0, v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    .line 8531
    .end local v0    # "globalId":Ljava/util/UUID;
    .end local v2    # "least":J
    .end local v4    # "locId":J
    .end local v6    # "most":J
    :goto_0
    return-object v1

    .end local p1    # "off":J
    .restart local v8    # "off":J
    :cond_0
    const/4 v1, 0x0

    move-wide p1, v8

    .end local v8    # "off":J
    .restart local p1    # "off":J
    goto :goto_0
.end method

.method public static readGridUuids(Ljava/io/DataInput;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4309
    const/4 v0, 0x0

    .line 4312
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4313
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 4315
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "col":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4317
    .restart local v0    # "col":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/lang/IgniteUuid;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4318
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4321
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v0
.end method

.method public static readIntArray(Ljava/io/DataInput;)[I
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4517
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 4519
    .local v1, "len":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 4520
    const/4 v2, 0x0

    .line 4527
    :cond_0
    return-object v2

    .line 4522
    :cond_1
    new-array v2, v1, [I

    .line 4524
    .local v2, "res":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4525
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 4524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readIntCollection(Ljava/io/DataInput;)Ljava/util/Collection;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1369
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1372
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1373
    const/4 v0, 0x0

    .line 1380
    :cond_0
    return-object v0

    .line 1375
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1377
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1378
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readIntKeyIntValueMap(Ljava/io/DataInput;)Ljava/util/Map;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4775
    const/4 v1, 0x0

    .line 4778
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4779
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 4781
    .local v2, "size":I
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 4783
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4784
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4783
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4787
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v1
.end method

.method public static readIntKeyMap(Ljava/io/ObjectInput;)Ljava/util/Map;
    .locals 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4734
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 4737
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4738
    const/4 v1, 0x0

    .line 4745
    :cond_0
    return-object v1

    .line 4740
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 4742
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4743
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readIntList(Ljava/io/DataInput;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4818
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 4821
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4822
    const/4 v0, 0x0

    .line 4829
    :cond_0
    return-object v0

    .line 4824
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4826
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4827
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4826
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readIntSet(Ljava/io/DataInput;)Ljava/util/Set;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4860
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 4863
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4864
    const/4 v1, 0x0

    .line 4871
    :cond_0
    return-object v1

    .line 4866
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashSet;-><init>(IF)V

    .line 4868
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4869
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4868
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readLinkedMap(Ljava/io/ObjectInput;)Ljava/util/LinkedHashMap;
    .locals 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4693
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 4696
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4697
    const/4 v1, 0x0

    .line 4704
    :cond_0
    return-object v1

    .line 4699
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 4701
    .local v1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4702
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readList(Ljava/io/ObjectInput;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4798
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 4801
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4802
    const/4 v0, 0x0

    .line 4809
    :cond_0
    return-object v0

    .line 4804
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4806
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4807
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4806
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readMap(Ljava/io/ObjectInput;)Ljava/util/Map;
    .locals 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4579
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 4581
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4582
    const/4 v1, 0x0

    .line 4589
    :cond_0
    return-object v1

    .line 4584
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 4586
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4587
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readSet(Ljava/io/ObjectInput;)Ljava/util/Set;
    .locals 4
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4840
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 4843
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4844
    const/4 v1, 0x0

    .line 4851
    :cond_0
    return-object v1

    .line 4846
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashSet;-><init>(IF)V

    .line 4848
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4849
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readString(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4898
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readStringMap(Ljava/io/DataInput;)Ljava/util/Map;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4641
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 4643
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4644
    const/4 v1, 0x0

    .line 4651
    :cond_0
    return-object v1

    .line 4646
    :cond_1
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 4648
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4649
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->readUTFStringNullable(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->readUTFStringNullable(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readTreeMap(Ljava/io/ObjectInput;)Ljava/util/TreeMap;
    .locals 5
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4600
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 4602
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4603
    const/4 v1, 0x0

    .line 4610
    :cond_0
    return-object v1

    .line 4605
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 4607
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 4608
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readUTFStringNullable(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4680
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readUuid(Ljava/io/DataInput;)Ljava/util/UUID;
    .locals 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4352
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4353
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 4354
    .local v2, "most":J
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 4356
    .local v0, "least":J
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-static {v4}, Lorg/apache/ignite/internal/util/IgniteUuidCache;->onIgniteUuidRead(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v4

    .line 4359
    .end local v0    # "least":J
    .end local v2    # "most":J
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static readUuids(Ljava/io/DataInput;)Ljava/util/List;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 4265
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 4268
    .local v2, "size":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4269
    const/4 v0, 0x0

    .line 4276
    :cond_0
    return-object v0

    .line 4271
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4273
    .local v0, "col":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4274
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readVersion(JZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 12
    .param p0, "ptr"    # J
    .param p2, "verEx"    # Z

    .prologue
    .line 8616
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x4

    add-long/2addr v4, p0

    invoke-virtual {v0, v4, v5}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v3

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x8

    add-long/2addr v4, p0

    invoke-virtual {v0, v4, v5}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v4

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x10

    add-long/2addr v6, p0

    invoke-virtual {v0, v6, v7}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IIJJ)V

    .line 8621
    .local v1, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz p2, :cond_0

    .line 8622
    const-wide/16 v4, 0x18

    add-long/2addr p0, v4

    .line 8624
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v4

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x4

    add-long/2addr v6, p0

    invoke-virtual {v0, v6, v7}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v5

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x8

    add-long/2addr v6, p0

    invoke-virtual {v0, v6, v7}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v6

    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v8, 0x10

    add-long/2addr v8, p0

    invoke-virtual {v0, v8, v9}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v8

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;-><init>(IIJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .end local v1    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .local v3, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object v1, v3

    .line 8631
    .end local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v1    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    return-object v1
.end method

.method public static readVersion([BJZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 21
    .param p0, "arr"    # [B
    .param p1, "off"    # J
    .param p3, "verEx"    # Z

    .prologue
    .line 8641
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    .line 8643
    .local v6, "topVer":I
    const-wide/16 v14, 0x4

    add-long p1, p1, v14

    .line 8645
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    .line 8647
    .local v7, "nodeOrderDrId":I
    const-wide/16 v14, 0x4

    add-long p1, p1, v14

    .line 8649
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 8651
    .local v8, "globalTime":J
    const-wide/16 v14, 0x8

    add-long p1, p1, v14

    .line 8653
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 8655
    .local v10, "order":J
    const-wide/16 v14, 0x8

    add-long p1, p1, v14

    .line 8657
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct/range {v5 .. v11}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IIJJ)V

    .line 8659
    .local v5, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz p3, :cond_0

    .line 8660
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    .line 8662
    const-wide/16 v14, 0x4

    add-long p1, p1, v14

    .line 8664
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    .line 8666
    const-wide/16 v14, 0x4

    add-long p1, p1, v14

    .line 8668
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 8670
    const-wide/16 v14, 0x8

    add-long p1, p1, v14

    .line 8672
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 8674
    new-instance v13, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    move v14, v6

    move v15, v7

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-object/from16 v20, v5

    invoke-direct/range {v13 .. v20}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;-><init>(IIJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .end local v5    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .local v13, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object v5, v13

    .line 8677
    .end local v13    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v5    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    return-object v5
.end method

.method public static registerCacheMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;
    .locals 2
    .param p0, "mbeanSrv"    # Ljavax/management/MBeanServer;
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/management/MBeanServer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/management/ObjectName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .prologue
    .line 4045
    .local p4, "impl":Ljava/lang/Object;, "TT;"
    .local p5, "itf":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4046
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4047
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p5, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4049
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;

    invoke-direct {v0, p4, p5}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4051
    .local v0, "mbean":Ljavax/management/DynamicMBean;
    invoke-interface {v0}, Ljavax/management/DynamicMBean;->getMBeanInfo()Ljavax/management/MBeanInfo;

    .line 4053
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/internal/util/IgniteUtils;->makeCacheMBeanName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v1

    return-object v1
.end method

.method public static registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;
    .locals 2
    .param p0, "mbeanSrv"    # Ljavax/management/MBeanServer;
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "grp"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
    .param p5    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/management/MBeanServer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/management/ObjectName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .prologue
    .line 3995
    .local p4, "impl":Ljava/lang/Object;, "TT;"
    .local p5, "itf":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3996
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3997
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p5, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3999
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;

    invoke-direct {v0, p4, p5}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4001
    .local v0, "mbean":Ljavax/management/DynamicMBean;
    invoke-interface {v0}, Ljavax/management/DynamicMBean;->getMBeanInfo()Ljavax/management/MBeanInfo;

    .line 4003
    invoke-static {p1, p2, p3}, Lorg/apache/ignite/internal/util/IgniteUtils;->makeMBeanName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v1

    return-object v1
.end method

.method public static registerMBean(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;
    .locals 2
    .param p0, "mbeanSrv"    # Ljavax/management/MBeanServer;
    .param p1, "name"    # Ljavax/management/ObjectName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/management/MBeanServer;",
            "Ljavax/management/ObjectName;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/management/ObjectName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .prologue
    .line 4019
    .local p2, "impl":Ljava/lang/Object;, "TT;"
    .local p3, "itf":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4020
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4021
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4023
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;

    invoke-direct {v0, p2, p3}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4025
    .local v0, "mbean":Ljavax/management/DynamicMBean;
    invoke-interface {v0}, Ljavax/management/DynamicMBean;->getMBeanInfo()Ljavax/management/MBeanInfo;

    .line 4027
    invoke-interface {p0, v0, p1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/management/ObjectInstance;->getObjectName()Ljavax/management/ObjectName;

    move-result-object v1

    return-object v1
.end method

.method public static relaxDiscoveryOrdered()Z
    .locals 2

    .prologue
    .line 766
    const-string/jumbo v0, "true"

    const-string v1, "IGNITE_NO_DISCO_ORDER"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static releaseQuiet(Ljava/nio/channels/FileLock;)V
    .locals 1
    .param p0, "lock"    # Ljava/nio/channels/FileLock;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3615
    if-eqz p0, :cond_0

    .line 3617
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3622
    :cond_0
    :goto_0
    return-void

    .line 3619
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeJavaNoOpLogger(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/logging/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7698
    .local p0, "rmvHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    const-string v5, ""

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    .line 7700
    .local v4, "log":Ljava/util/logging/Logger;
    invoke-virtual {v4}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/logging/Handler;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 7701
    .local v1, "h":Ljava/util/logging/Handler;
    invoke-virtual {v4, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 7700
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7703
    .end local v1    # "h":Ljava/util/logging/Handler;
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7704
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;

    .line 7705
    .restart local v1    # "h":Ljava/util/logging/Handler;
    invoke-virtual {v4, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    goto :goto_1

    .line 7707
    .end local v1    # "h":Ljava/util/logging/Handler;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static removeLog4jNoOpLogger(Lorg/apache/ignite/lang/IgniteBiTuple;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 7651
    .local p0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    .line 7652
    .local v3, "rootLog":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    .line 7654
    .local v2, "nullApp":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 7665
    :goto_0
    return-void

    .line 7658
    :cond_0
    :try_start_0
    const-string v4, "org.apache.log4j.Appender"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7660
    .local v0, "appenderCls":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "removeAppender"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7662
    .end local v0    # "appenderCls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 7663
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to remove previously added no-op logger for Log4j."

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static declared-synchronized resetLocalHost()Ljava/net/InetAddress;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1627
    const-class v9, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v9

    const/4 v8, 0x0

    :try_start_0
    sput-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;

    .line 1629
    const-string v8, "IGNITE_LOCAL_HOST"

    invoke-static {v8}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1631
    .local v7, "sysLocHost":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1632
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1634
    :cond_0
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1635
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    sput-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;

    .line 1671
    :cond_1
    :goto_0
    sget-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;

    if-nez v8, :cond_2

    .line 1672
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v8

    sput-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;

    .line 1674
    :cond_2
    sget-object v8, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v8

    .line 1637
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .local v5, "itfs":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1640
    .local v4, "itf":Ljava/net/NetworkInterface;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1627
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "itf":Ljava/net/NetworkInterface;
    .end local v5    # "itfs":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1642
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "itfs":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :cond_4
    :try_start_2
    new-instance v8, Lorg/apache/ignite/internal/util/IgniteUtils$16;

    invoke-direct {v8}, Lorg/apache/ignite/internal/util/IgniteUtils$16;-><init>()V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1651
    const/16 v6, 0x7d0

    .line 1653
    .local v6, "reachTimeout":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1654
    .restart local v4    # "itf":Ljava/net/NetworkInterface;
    const/4 v1, 0x0

    .line 1656
    .local v1, "found":Z
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1657
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v4, v0, v6}, Lorg/apache/ignite/internal/util/IgniteUtils;->reachable(Ljava/net/NetworkInterface;Ljava/net/InetAddress;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1658
    sput-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->locHost:Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1660
    const/4 v1, 0x1

    .line 1666
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_7
    if-eqz v1, :cond_5

    goto :goto_0
.end method

.method public static resolveAddresses(Lorg/apache/ignite/configuration/AddressResolver;Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 9
    .param p0, "addrRslvr"    # Lorg/apache/ignite/configuration/AddressResolver;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/AddressResolver;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 8219
    .local p1, "addrs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 8221
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8223
    .local v2, "extAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8224
    .local v0, "addr":Ljava/lang/String;
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 8226
    .local v5, "sockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8228
    :try_start_0
    invoke-interface {p0, v5}, Lorg/apache/ignite/configuration/AddressResolver;->getExternalAddresses(Ljava/net/InetSocketAddress;)Ljava/util/Collection;

    move-result-object v3

    .line 8230
    .local v3, "extAddrs0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    if-eqz v3, :cond_1

    .line 8231
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8233
    .end local v3    # "extAddrs0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :catch_0
    move-exception v1

    .line 8234
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v6, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get mapped external addresses [addrRslvr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 8240
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "sockAddr":Ljava/net/InetSocketAddress;
    :cond_2
    return-object v2
.end method

.method public static resolveIgnitePath(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3184
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 3190
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->getIgniteHome()Ljava/lang/String;

    move-result-object v1

    .line 3192
    .local v1, "home":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3193
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 3208
    :goto_0
    return-object v2

    .line 3203
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3205
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 3206
    goto :goto_0

    .line 3208
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3225
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->resolveIgniteUrl(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static resolveIgniteUrl(Ljava/lang/String;Z)Ljava/net/URL;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "metaInf"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3271
    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->resolveIgnitePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3273
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 3277
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3292
    :goto_0
    return-object v3

    .line 3279
    :catch_0
    move-exception v3

    .line 3284
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3286
    .local v0, "clsLdr":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_2

    .line 3287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v3, "META-INF/"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\\"

    const-string v5, "/"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3289
    .local v2, "locPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    goto :goto_0

    .line 3287
    .end local v2    # "locPath":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 3292
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static resolveLocalAddresses(Ljava/net/InetAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 10
    .param p0, "locAddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1549
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1551
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1552
    .local v1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v2, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1555
    sget-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->cachedLocalAddr:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1557
    .local v7, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    if-nez v7, :cond_6

    .line 1558
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1560
    .local v6, "localAddrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 1561
    .local v5, "itf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1562
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1563
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1567
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "itf":Ljava/net/NetworkInterface;
    :cond_3
    invoke-static {v6}, Lorg/apache/ignite/internal/util/IgniteUtils;->filterReachable(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1569
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1570
    .restart local v0    # "addr":Ljava/net/InetAddress;
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->addresses(Ljava/net/InetAddress;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    .line 1572
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1573
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    const-string v9, "No network addresses found (is networking enabled?)."

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1575
    :cond_5
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v7

    .line 1577
    sput-object v7, Lorg/apache/ignite/internal/util/IgniteUtils;->cachedLocalAddr:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1585
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "localAddrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v7    # "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :cond_6
    :goto_2
    return-object v7

    .line 1583
    :cond_7
    invoke-static {p0, v1, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->addresses(Ljava/net/InetAddress;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1585
    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v7

    goto :goto_2
.end method

.method public static resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "hostName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1466
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private static resolveProjectHome()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3028
    sget-boolean v8, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    const-class v8, Lorg/apache/ignite/internal/util/IgniteUtils;

    invoke-static {v8}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 3031
    :cond_0
    const-string v8, "IGNITE_HOME"

    invoke-static {v8}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3033
    .local v4, "ggHome0":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3072
    .end local v4    # "ggHome0":Ljava/lang/String;
    .local v0, "appWorkDir":Ljava/lang/String;
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/ignite/internal/util/IgniteUtils;>;"
    :cond_1
    :goto_0
    return-object v4

    .line 3036
    .end local v0    # "appWorkDir":Ljava/lang/String;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/ignite/internal/util/IgniteUtils;>;"
    .restart local v4    # "ggHome0":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "user.dir"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3038
    .restart local v0    # "appWorkDir":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3039
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->findProjectHome(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 3041
    if-nez v4, :cond_1

    .line 3047
    :cond_3
    const-class v1, Lorg/apache/ignite/internal/util/IgniteUtils;

    .line 3050
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/apache/ignite/internal/util/IgniteUtils;>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v2

    .line 3053
    .local v2, "domain":Ljava/security/ProtectionDomain;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    if-nez v8, :cond_5

    .line 3054
    :cond_4
    const/4 v8, 0x0

    invoke-static {v1, v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->logResolveFailed(Ljava/lang/Class;Ljava/lang/Exception;)V

    move-object v4, v7

    .line 3056
    goto :goto_0

    .line 3060
    :cond_5
    invoke-virtual {v2}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 3063
    .local v5, "uri":Ljava/net/URI;
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteUtils;->isWindows()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 3064
    new-instance v6, Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file://"

    const-string v10, "file:/"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "uri":Ljava/net/URI;
    .local v6, "uri":Ljava/net/URI;
    move-object v5, v6

    .line 3072
    .end local v6    # "uri":Ljava/net/URI;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v7}, Lorg/apache/ignite/internal/util/IgniteUtils;->findProjectHome(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3066
    .end local v2    # "domain":Ljava/security/ProtectionDomain;
    .end local v5    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 3067
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/IgniteUtils;->logResolveFailed(Ljava/lang/Class;Ljava/lang/Exception;)V

    move-object v4, v7

    .line 3069
    goto :goto_0

    .line 3066
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static resolveSpringUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p0, "springCfgPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3236
    const-string v2, "springCfgPath"

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3241
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    .local v1, "url":Ljava/net/URL;
    :cond_0
    return-object v1

    .line 3243
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 3246
    .restart local v1    # "url":Ljava/net/URL;
    if-nez v1, :cond_0

    .line 3247
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spring XML configuration path is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Note that this path should be either absolute or a relative local file system path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "relative to META-INF in classpath or valid URL to IGNITE_HOME."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static resolveWorkDirectory(Ljava/lang/String;Z)Ljava/io/File;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "delIfExist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 8363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8365
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8366
    sget-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->igniteWork:Ljava/lang/String;

    .line 8368
    .local v2, "ggWork0":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8369
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve path (work directory has not been set): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8371
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "dir":Ljava/io/File;
    .local v1, "dir":Ljava/io/File;
    move-object v0, v1

    .line 8374
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "ggWork0":Ljava/lang/String;
    .restart local v0    # "dir":Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8375
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->delete(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8376
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8379
    :cond_2
    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->mkdirs(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8380
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory does not exist and cannot be created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8382
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_4

    .line 8383
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read from directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8385
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_5

    .line 8386
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot write to directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8388
    :cond_5
    return-object v0
.end method

.method public static rollbackConnection(Ljava/sql/Connection;Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p0, "rsrc"    # Ljava/sql/Connection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3631
    if-eqz p0, :cond_0

    .line 3633
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3638
    :cond_0
    :goto_0
    return-void

    .line 3635
    :catch_0
    move-exception v0

    .line 3636
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to rollback JDBC connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static rollbackConnectionQuiet(Ljava/sql/Connection;)V
    .locals 1
    .param p0, "rsrc"    # Ljava/sql/Connection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3894
    if-eqz p0, :cond_0

    .line 3896
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->rollback()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3901
    :cond_0
    :goto_0
    return-void

    .line 3898
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static roundedHeapSize(DI)D
    .locals 8
    .param p0, "heap"    # D
    .param p2, "precision"    # I

    .prologue
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 954
    new-instance v4, Ljava/math/BigDecimal;

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double v6, p0, v6

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v5, Ljava/math/MathContext;

    invoke-direct {v5, p2}, Ljava/math/MathContext;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 956
    .local v0, "rounded":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .end local v0    # "rounded":D
    :cond_0
    return-wide v0
.end method

.method public static safeAbs(I)I
    .locals 0
    .param p0, "i"    # I

    .prologue
    .line 7784
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 7786
    if-gez p0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "i":I
    :cond_0
    return p0
.end method

.method public static sameMacs(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 3
    .param p0, "loc"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p1, "rmt"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 1716
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1717
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1719
    :cond_1
    const-string v2, "org.apache.ignite.macs"

    invoke-interface {p0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1720
    .local v0, "locMacs":Ljava/lang/String;
    const-string v2, "org.apache.ignite.macs"

    invoke-interface {p1, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1722
    .local v1, "rmtMacs":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sealList(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1415
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs sealList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1426
    .local p0, "a":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sealMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1402
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1404
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static setIgniteHome(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3140
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 3144
    .local v1, "ggHomeTup":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 3145
    const-class v3, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v3

    .line 3147
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 3149
    if-nez v1, :cond_2

    .line 3150
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3151
    const-string v2, "IGNITE_HOME"

    invoke-static {v2}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3155
    :goto_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/util/IgniteUtils;->ggHome:Lorg/apache/ignite/internal/util/lang/GridTuple;

    .line 3157
    monitor-exit v3

    .line 3169
    :cond_0
    return-void

    .line 3153
    :cond_1
    const-string v2, "IGNITE_HOME"

    invoke-static {v2, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 3161
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3160
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3161
    .local v0, "ggHome0":Ljava/lang/String;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3166
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3167
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set IGNITE_HOME after it has been already resolved [igniteHome="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newIgniteHome="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3164
    .end local v0    # "ggHome0":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "ggHome0":Ljava/lang/String;
    goto :goto_1
.end method

.method public static setWorkDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "userWorkDir"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "userIgniteHome"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 8295
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->igniteWork:Ljava/lang/String;

    .line 8297
    .local v0, "igniteWork0":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 8298
    const-class v4, Lorg/apache/ignite/internal/util/IgniteUtils;

    monitor-enter v4

    .line 8300
    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->igniteWork:Ljava/lang/String;

    .line 8302
    if-eqz v0, :cond_1

    .line 8303
    monitor-exit v4

    .line 8338
    :cond_0
    :goto_0
    return-void

    .line 8307
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8308
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8323
    .local v2, "workDir":Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_6

    .line 8324
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Work directory path must be absolute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8336
    .end local v2    # "workDir":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 8309
    :cond_2
    :try_start_1
    sget-object v3, Lorg/apache/ignite/internal/util/IgniteUtils;->IGNITE_WORK_DIR:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8310
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/apache/ignite/internal/util/IgniteUtils;->IGNITE_WORK_DIR:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "workDir":Ljava/io/File;
    goto :goto_1

    .line 8311
    .end local v2    # "workDir":Ljava/io/File;
    :cond_3
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8312
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "work"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "workDir":Ljava/io/File;
    goto :goto_1

    .line 8314
    .end local v2    # "workDir":Ljava/io/File;
    :cond_4
    const-string v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8316
    .local v1, "tmpDirPath":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 8317
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to create work directory in OS temp (property \'java.io.tmpdir\' is null)."

    invoke-direct {v3, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8320
    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignite"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "work"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "workDir":Ljava/io/File;
    goto :goto_1

    .line 8326
    .end local v1    # "tmpDirPath":Ljava/lang/String;
    :cond_6
    invoke-static {v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->mkdirs(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 8327
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Work directory does not exist and cannot be created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8329
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_8

    .line 8330
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read from work directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8332
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_9

    .line 8333
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot write to work directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8335
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/ignite/internal/util/IgniteUtils;->igniteWork:Ljava/lang/String;

    .line 8336
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static shortToBytes(S[BI)I
    .locals 1
    .param p0, "s"    # S
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 2385
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->shortToBytes(S[BI)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public static shortToBytes(S)[B
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 2372
    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->shortToBytes(S)[B

    move-result-object v0

    return-object v0
.end method

.method public static shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V
    .locals 5
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lorg/apache/ignite/IgniteLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4207
    .local p0, "owner":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 4208
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 4210
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runnable tasks outlived thread pool executor service [owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/apache/ignite/internal/util/IgniteUtils;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tasks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 4215
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4226
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_1
    :goto_0
    return-void

    .line 4217
    .restart local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catch_0
    move-exception v0

    .line 4218
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const-string v2, "Got interrupted while waiting for executor service to stop."

    invoke-static {p2, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 4220
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "ms"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 6949
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6956
    return-void

    .line 6951
    :catch_0
    move-exception v0

    .line 6952
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6954
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static spiAttribute(Lorg/apache/ignite/spi/IgniteSpi;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 5064
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5065
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5067
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/ignite/spi/IgniteSpi;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startLifecycleAware(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 8039
    .local p0, "objs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8040
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v3, :cond_0

    .line 8041
    check-cast v2, Lorg/apache/ignite/lifecycle/LifecycleAware;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {v2}, Lorg/apache/ignite/lifecycle/LifecycleAware;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8044
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 8045
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 8047
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static startThreads(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4128
    .local p0, "threads":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Thread;>;"
    if-eqz p0, :cond_1

    .line 4129
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 4130
    .local v1, "thread":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    .line 4131
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 4134
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public static staticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v10, 0x5d

    .line 7549
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 7550
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p1, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 7553
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v3, v1, v4

    .line 7554
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7555
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 7557
    .local v0, "accessible":Z
    if-nez v0, :cond_2

    .line 7558
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7560
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 7562
    .local v6, "val":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_3

    .line 7563
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7565
    :cond_3
    return-object v6

    .line 7553
    .end local v0    # "accessible":Z
    .end local v6    # "val":Ljava/lang/Object;, "TT;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7568
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 7569
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get field value [fieldName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 7572
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_5
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get field value [fieldName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static stopLifecycleAware(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Iterable;)V
    .locals 6
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 8057
    .local p1, "objs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8058
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v4, :cond_0

    .line 8060
    :try_start_0
    move-object v0, v3

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    move-object v4, v0

    invoke-interface {v4}, Lorg/apache/ignite/lifecycle/LifecycleAware;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8062
    :catch_0
    move-exception v1

    .line 8063
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop component (ignoring): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8067
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static sunReflectionFactory()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 717
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->SUN_REFLECT_FACTORY:Ljava/lang/Object;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 6268
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 6270
    .local v0, "a":[Ljava/lang/Object;, "[TT;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 6272
    :cond_0
    return-object p1
.end method

.method public static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 8431
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 8433
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8434
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8436
    :cond_0
    return v0
.end method

.method public static toInetAddresses(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 8122
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8124
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8126
    .local v2, "hostNamesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8127
    .local v0, "addr":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 8129
    .local v1, "hostName":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .line 8131
    .local v4, "inetAddr":Ljava/net/InetAddress;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8133
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 8139
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8141
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 8147
    :cond_3
    :goto_3
    if-eqz v4, :cond_0

    .line 8148
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8127
    .end local v1    # "hostName":Ljava/lang/String;
    .end local v4    # "inetAddr":Ljava/net/InetAddress;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 8151
    .end local v0    # "addr":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8152
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Addresses can not be resolved [addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hostNames="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 8155
    :cond_6
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->identity()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->viewListReadOnly(Ljava/util/List;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/List;

    move-result-object v6

    return-object v6

    .line 8135
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "hostName":Ljava/lang/String;
    .restart local v4    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 8143
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public static toInetAddresses(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/util/Collection;
    .locals 2
    .param p0, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 8108
    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->hostNames()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->toInetAddresses(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static toIntArray(Ljava/util/Collection;)[I
    .locals 6
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 6166
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6167
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->EMPTY_INTS:[I

    .line 6176
    :cond_1
    return-object v0

    .line 6169
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 6171
    .local v0, "arr":[I
    const/4 v3, 0x0

    .line 6173
    .local v3, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6174
    .local v1, "i":Ljava/lang/Integer;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    move v3, v4

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0
.end method

.method public static varargs toIntList([I[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/List;
    .locals 6
    .param p0, "arr"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6200
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    .line 6201
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 6214
    :cond_1
    return-object v4

    .line 6203
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6205
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6206
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 6207
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6209
    .end local v0    # "arr$":[I
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    move-object v0, p0

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 6210
    .restart local v1    # "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6209
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toLongArray(Ljava/util/Collection;)[J
    .locals 8
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 6224
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6225
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->EMPTY_LONGS:[J

    .line 6234
    :cond_1
    return-object v0

    .line 6227
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v0, v5, [J

    .line 6229
    .local v0, "arr":[J
    const/4 v2, 0x0

    .line 6231
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 6232
    .local v4, "l":Ljava/lang/Long;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v2

    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0
.end method

.method public static toLongList([J)Ljava/util/List;
    .locals 7
    .param p0, "arr"    # [J
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6244
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    .line 6245
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 6252
    :cond_1
    return-object v5

    .line 6247
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6249
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v2, v0, v1

    .line 6250
    .local v2, "l":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toShortString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 6151
    .local p0, "ns":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v2, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid nodes [cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 6153
    .local v2, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 6154
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0

    .line 6156
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;
    .locals 4
    .param p0, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 6140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridNode [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daemon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toSocketAddresses(Ljava/util/Collection;Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 7
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8181
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "hostNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 8183
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetSocketAddress;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 8185
    .local v2, "hostNamesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8186
    .local v0, "addr":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 8188
    .local v1, "hostName":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 8189
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 8191
    .local v4, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8192
    :cond_0
    new-instance v4, Ljava/net/InetSocketAddress;

    .end local v4    # "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-direct {v4, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 8194
    .restart local v4    # "inetSockAddr":Ljava/net/InetSocketAddress;
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8199
    .end local v4    # "inetSockAddr":Ljava/net/InetSocketAddress;
    :cond_2
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8186
    .end local v1    # "hostName":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 8202
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->identity()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->viewListReadOnly(Ljava/util/List;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public static toSocketAddresses(Lorg/apache/ignite/cluster/ClusterNode;I)Ljava/util/Collection;
    .locals 2
    .param p0, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8167
    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/ignite/cluster/ClusterNode;->hostNames()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->toSocketAddresses(Ljava/util/Collection;Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static unique([II[II)[I
    .locals 9
    .param p0, "a"    # [I
    .param p1, "aLen"    # I
    .param p2, "b"    # [I
    .param p3, "bLen"    # I

    .prologue
    .line 6289
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 6290
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 6291
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/IgniteUtils;->isIncreasingArray([II)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 6292
    :cond_2
    sget-boolean v7, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    invoke-static {p2, p3}, Lorg/apache/ignite/internal/util/IgniteUtils;->isIncreasingArray([II)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 6294
    :cond_3
    add-int v7, p1, p3

    new-array v4, v7, [I

    .line 6295
    .local v4, "res":[I
    const/4 v5, 0x0

    .line 6297
    .local v5, "resLen":I
    const/4 v0, 0x0

    .line 6298
    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    move v6, v5

    .line 6300
    .end local v5    # "resLen":I
    .local v6, "resLen":I
    :goto_0
    if-ge v1, p1, :cond_6

    if-ge v3, p3, :cond_6

    .line 6301
    aget v7, p0, v1

    aget v8, p2, v3

    if-ne v7, v8, :cond_4

    .line 6302
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 6303
    :cond_4
    aget v7, p0, v1

    aget v8, p2, v3

    if-ge v7, v8, :cond_5

    .line 6304
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "resLen":I
    .restart local v5    # "resLen":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v7, p0, v1

    aput v7, v4, v6

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v6, v5

    .end local v5    # "resLen":I
    .restart local v6    # "resLen":I
    goto :goto_0

    .line 6306
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "resLen":I
    .restart local v5    # "resLen":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget v7, p2, v3

    aput v7, v4, v6

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v6, v5

    .end local v5    # "resLen":I
    .restart local v6    # "resLen":I
    goto :goto_0

    .line 6309
    :cond_6
    :goto_1
    if-ge v1, p1, :cond_7

    .line 6310
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "resLen":I
    .restart local v5    # "resLen":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget v7, p0, v1

    aput v7, v4, v6

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v6, v5

    .end local v5    # "resLen":I
    .restart local v6    # "resLen":I
    goto :goto_1

    .line 6312
    :cond_7
    :goto_2
    if-ge v3, p3, :cond_8

    .line 6313
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "resLen":I
    .restart local v5    # "resLen":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget v7, p2, v3

    aput v7, v4, v6

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v6, v5

    .end local v5    # "resLen":I
    .restart local v6    # "resLen":I
    goto :goto_2

    .line 6315
    :cond_8
    invoke-static {v4, v6}, Lorg/apache/ignite/internal/util/IgniteUtils;->copyIfExceeded([II)[I

    move-result-object v7

    return-object v7
.end method

.method private static unsafeByteArrayCopyAvailable()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7934
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7936
    .local v1, "unsafeCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lsun/misc/Unsafe;>;"
    const-string v4, "copyMemory"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 7941
    :goto_0
    return v2

    .line 7940
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Throwable;
    move v2, v3

    .line 7941
    goto :goto_0
.end method

.method public static unwrap(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 6637
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6643
    :cond_0
    instance-of v0, p0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    if-eqz v0, :cond_2

    .line 6644
    check-cast p0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->unwrap()Ljava/lang/Throwable;

    move-result-object p0

    .line 6640
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 6641
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "t":Ljava/lang/Throwable;
    throw p0

    .line 6649
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    check-cast p0, Ljava/lang/Exception;

    .end local p0    # "t":Ljava/lang/Throwable;
    return-object p0
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;Lorg/apache/ignite/IgniteLogger;)V
    .locals 10
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "toDir"    # Ljava/io/File;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5611
    const/4 v6, 0x0

    .line 5614
    .local v6, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5616
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .local v7, "zip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/IgniteUtils;->asIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 5617
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5619
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5646
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    :goto_1
    if-eqz v6, :cond_0

    .line 5647
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    throw v8

    .line 5624
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v2, 0x0

    .line 5625
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 5628
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 5630
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5632
    .local v5, "outFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 5633
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 5635
    :cond_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5637
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/IgniteUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 5640
    :try_start_4
    invoke-static {v2, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 5641
    invoke-static {v4, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    goto :goto_0

    .line 5640
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "outFile":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    :goto_2
    invoke-static {v2, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 5641
    invoke-static {v3, p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5646
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :cond_3
    if-eqz v7, :cond_4

    .line 5647
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 5649
    :cond_4
    return-void

    .line 5646
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "zip":Ljava/util/zip/ZipFile;
    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v8

    goto :goto_1

    .line 5640
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "outFile":Ljava/io/File;
    .restart local v7    # "zip":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v8

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static uuidToBytes(Ljava/util/UUID;[BI)I
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "arr"    # [B
    .param p2, "off"    # I

    .prologue
    .line 2398
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->uuidToBytes(Ljava/util/UUID;[BI)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public static uuidToBytes(Ljava/util/UUID;)[B
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2408
    invoke-static {p0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    return-object v0
.end method

.method public static wait(Ljava/lang/Object;)V
    .locals 2
    .param p0, "mux"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 5592
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5599
    return-void

    .line 5594
    :catch_0
    move-exception v0

    .line 5595
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 5597
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public static warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 3687
    sget-boolean v1, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 3689
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3691
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3692
    return-void
.end method

.method public static warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "longMsg"    # Ljava/lang/Object;
    .param p2, "shortMsg"    # Ljava/lang/Object;

    .prologue
    .line 3751
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3752
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3754
    :cond_1
    if-eqz p0, :cond_2

    .line 3755
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    .line 3759
    :goto_0
    return-void

    .line 3757
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->SHORT_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] (wrn) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 2963
    .local p0, "e":Ljava/lang/Throwable;, "TE;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2965
    :cond_0
    if-eqz p1, :cond_1

    .line 2966
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2968
    :cond_1
    return-object p0
.end method

.method public static wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .param p0, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6060
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 6063
    .local v1, "curThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 6067
    .local v0, "ctxLdr":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 6069
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 6079
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object v3

    .line 6071
    :catch_0
    move-exception v2

    .line 6072
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6079
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v3

    .line 6074
    :catch_1
    move-exception v2

    .line 6075
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v3, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6071
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public static wrapThreadLoader(Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteOutClosure;)Ljava/lang/Object;
    .locals 3
    .param p0, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Lorg/apache/ignite/lang/IgniteOutClosure",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 6093
    .local p1, "c":Lorg/apache/ignite/lang/IgniteOutClosure;, "Lorg/apache/ignite/lang/IgniteOutClosure<TR;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 6096
    .local v1, "curThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 6099
    .local v0, "ctxLdr":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 6101
    invoke-interface {p1}, Lorg/apache/ignite/lang/IgniteOutClosure;->apply()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 6105
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v2
.end method

.method public static wrapThreadLoader(Ljava/lang/ClassLoader;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "ldr"    # Ljava/lang/ClassLoader;
    .param p1, "c"    # Ljava/lang/Runnable;

    .prologue
    .line 6117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 6120
    .local v1, "curThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 6123
    .local v0, "ctxLdr":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 6125
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6129
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 6131
    return-void

    .line 6129
    :catchall_0
    move-exception v2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v2
.end method

.method public static writeArray(Ljava/io/ObjectOutput;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/ObjectOutput;",
            "[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1265
    .local v2, "len":I
    :goto_0
    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1267
    if-eqz p1, :cond_1

    array-length v5, p1

    if-lez v5, :cond_1

    .line 1268
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 1269
    .local v4, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1263
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len":I
    .end local v3    # "len$":I
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    array-length v2, p1

    goto :goto_0

    .line 1270
    .restart local v2    # "len":I
    :cond_1
    return-void
.end method

.method public static writeBooleanArray(Ljava/io/DataOutput;[Z)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "arr"    # [Z
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4460
    if-nez p1, :cond_1

    .line 4461
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4468
    :cond_0
    return-void

    .line 4463
    :cond_1
    array-length v4, p1

    invoke-interface {p0, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4465
    move-object v0, p1

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v1, v0, v2

    .line 4466
    .local v1, "b":Z
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static writeByteArray(Ljava/io/DataOutput;[B)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "arr"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1999
    if-nez p1, :cond_0

    .line 2000
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2006
    :goto_0
    return-void

    .line 2002
    :cond_0
    array-length v0, p1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2004
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method

.method public static writeByteArray(Ljava/io/DataOutput;[BI)V
    .locals 2
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "arr"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "maxLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2016
    if-nez p1, :cond_0

    .line 2017
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2025
    :goto_0
    return-void

    .line 2019
    :cond_0
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2021
    .local v0, "len":I
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2023
    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_0
.end method

.method public static writeByteCollection(Ljava/io/DataOutput;Ljava/util/Collection;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2088
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_0

    .line 2089
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2091
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 2092
    .local v0, "i":Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 2095
    .end local v0    # "i":Ljava/lang/Byte;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2096
    :cond_1
    return-void
.end method

.method public static writeBytesCollection(Ljava/io/DataOutput;Ljava/util/Collection;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Collection",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1960
    .local p1, "bytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-eqz p1, :cond_0

    .line 1961
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1963
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1964
    .local v0, "b":[B
    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeByteArray(Ljava/io/DataOutput;[B)V

    goto :goto_0

    .line 1967
    .end local v0    # "b":[B
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1968
    :cond_1
    return-void
.end method

.method public static writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V
    .locals 3
    .param p0, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutput;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1325
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_0

    .line 1326
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1328
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1329
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1332
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1333
    :cond_1
    return-void
.end method

.method public static writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ">(",
            "Ljava/io/DataOutput;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4911
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 4912
    return-void

    .line 4911
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public static writeGridUuid([BJLorg/apache/ignite/lang/IgniteUuid;)J
    .locals 13
    .param p0, "arr"    # [B
    .param p1, "off"    # J
    .param p3, "uid"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v10, 0x8

    .line 8490
    sget-object v1, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long v2, p1, v4

    .end local p1    # "off":J
    .local v2, "off":J
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p0, p1, p2, v0}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 8492
    if-eqz p3, :cond_1

    .line 8493
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8495
    add-long p1, v2, v10

    .line 8497
    .end local v2    # "off":J
    .restart local p1    # "off":J
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    move-object v5, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8499
    add-long/2addr p1, v10

    .line 8501
    sget-object v4, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v8

    move-object v5, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8503
    add-long/2addr p1, v10

    .line 8506
    :goto_1
    return-wide p1

    .line 8490
    .end local p1    # "off":J
    .restart local v2    # "off":J
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide p1, v2

    .end local v2    # "off":J
    .restart local p1    # "off":J
    goto :goto_1
.end method

.method public static writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 2
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "uid"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4372
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4374
    if-eqz p1, :cond_0

    .line 4375
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 4376
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 4378
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 4380
    :cond_0
    return-void

    .line 4372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeGridUuids(Ljava/io/DataOutput;Ljava/util/Collection;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4288
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz p1, :cond_0

    .line 4289
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4291
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4293
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteUuid;

    .line 4294
    .local v1, "id":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_0

    .line 4297
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4298
    :cond_1
    return-void
.end method

.method public static writeIntArray(Ljava/io/DataOutput;[I)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "arr"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4478
    if-nez p1, :cond_1

    .line 4479
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4486
    :cond_0
    return-void

    .line 4481
    :cond_1
    array-length v4, p1

    invoke-interface {p0, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4483
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 4484
    .local v1, "b":I
    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static writeIntCollection(Ljava/io/DataOutput;Ljava/util/Collection;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1342
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 1343
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1345
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1346
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 1349
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1350
    :cond_1
    return-void
.end method

.method public static writeIntKeyIntValueMap(Ljava/io/DataOutput;Ljava/util/Map;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4754
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 4755
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4757
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4759
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4760
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4761
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 4765
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4766
    :cond_1
    return-void
.end method

.method public static writeIntKeyMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V
    .locals 3
    .param p0, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutput;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4713
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;*>;"
    if-eqz p1, :cond_0

    .line 4714
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 4716
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4717
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 4718
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 4722
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 4723
    :cond_1
    return-void
.end method

.method public static writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V
    .locals 3
    .param p0, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutput;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4558
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-eqz p1, :cond_0

    .line 4559
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 4561
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4562
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 4563
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 4567
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 4568
    :cond_1
    return-void
.end method

.method public static writeMessageFully(Lorg/apache/ignite/plugin/extensions/communication/Message;Ljava/io/OutputStream;Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)I
    .locals 5
    .param p0, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8916
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 8917
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 8918
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 8919
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 8921
    :cond_3
    const/4 v1, 0x0

    .line 8922
    .local v1, "finished":Z
    const/4 v0, 0x0

    .line 8924
    .local v0, "cnt":I
    :goto_0
    if-nez v1, :cond_4

    .line 8925
    invoke-interface {p0, p2, p3}, Lorg/apache/ignite/plugin/extensions/communication/Message;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    .line 8927
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 8929
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    .line 8931
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 8934
    :cond_4
    return v0
.end method

.method public static writeString(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4883
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4885
    if-eqz p1, :cond_0

    .line 4886
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 4887
    :cond_0
    return-void

    .line 4883
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeStringMap(Ljava/io/DataOutput;Ljava/util/Map;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4621
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 4622
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4624
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4625
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeUTFStringNullable(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 4626
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeUTFStringNullable(Ljava/io/DataOutput;Ljava/lang/String;)V

    goto :goto_0

    .line 4630
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4631
    :cond_1
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2898
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2899
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2910
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2911
    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2946
    if-nez p1, :cond_1

    .line 2952
    :cond_0
    :goto_0
    return-void

    .line 2949
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .local v0, "out":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 2950
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2951
    if-eqz v0, :cond_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "x2":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 2949
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2951
    :catchall_0
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v2

    :catch_2
    move-exception v1

    .restart local v1    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v1    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public static writeUTFStringNullable(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "val"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4663
    if-eqz p1, :cond_0

    .line 4664
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4666
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 4670
    :goto_0
    return-void

    .line 4669
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    goto :goto_0
.end method

.method public static writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V
    .locals 2
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "uid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4334
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 4336
    if-eqz p1, :cond_0

    .line 4337
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 4338
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 4340
    :cond_0
    return-void

    .line 4334
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeUuids(Ljava/io/DataOutput;Ljava/util/Collection;)V
    .locals 3
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4246
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz p1, :cond_0

    .line 4247
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4249
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 4250
    .local v1, "id":Ljava/util/UUID;
    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    goto :goto_0

    .line 4253
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/util/UUID;
    :cond_0
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4254
    :cond_1
    return-void
.end method

.method public static writeVersion([BJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)J
    .locals 11
    .param p0, "arr"    # [B
    .param p1, "off"    # J
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 8565
    instance-of v7, p3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    .line 8567
    .local v7, "verEx":Z
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long v8, p1, v2

    .end local p1    # "off":J
    .local v8, "off":J
    invoke-virtual {v0, p0, p1, p2, v7}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 8569
    if-eqz v7, :cond_1

    .line 8570
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    .line 8572
    .local v6, "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    sget-boolean v0, Lorg/apache/ignite/internal/util/IgniteUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v6, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8574
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v1

    invoke-virtual {v0, p0, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 8576
    const-wide/16 v0, 0x4

    add-long p1, v8, v0

    .line 8578
    .end local v8    # "off":J
    .restart local p1    # "off":J
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderAndDrIdRaw()I

    move-result v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 8580
    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    .line 8582
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8584
    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 8586
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8588
    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 8591
    .end local v6    # "drVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 8593
    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    .line 8595
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderAndDrIdRaw()I

    move-result v1

    invoke-virtual {v0, p0, p1, p2, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 8597
    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    .line 8599
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8601
    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 8603
    sget-object v0, Lorg/apache/ignite/internal/util/IgniteUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order()J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 8605
    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 8607
    return-wide p1

    .end local p1    # "off":J
    .restart local v8    # "off":J
    :cond_1
    move-wide p1, v8

    .end local v8    # "off":J
    .restart local p1    # "off":J
    goto :goto_0
.end method

.method public static youngest(Ljava/util/Collection;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 8
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 8468
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v4, 0x0

    .line 8470
    .local v4, "youngest":Lorg/apache/ignite/cluster/ClusterNode;
    const-wide/high16 v2, -0x8000000000000000L

    .line 8472
    .local v2, "maxOrder":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 8473
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 8474
    move-object v4, v1

    .line 8476
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    goto :goto_0

    .line 8480
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-object v4
.end method
