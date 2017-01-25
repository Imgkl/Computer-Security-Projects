.class public Lorg/apache/ignite/internal/IgniteVersionUtils;
.super Ljava/lang/Object;
.source "IgniteVersionUtils.java"


# static fields
.field public static final ACK_VER_STR:Ljava/lang/String;

.field public static final BUILD_TSTAMP:J

.field public static final BUILD_TSTAMP_STR:Ljava/lang/String;

.field public static final COPYRIGHT:Ljava/lang/String; = "2015 Copyright(C) Apache Software Foundation"

.field public static final RELEASE_DATE_STR:Ljava/lang/String;

.field public static final REV_HASH_STR:Ljava/lang/String;

.field public static final VER:Lorg/apache/ignite/lang/IgniteProductVersion;

.field public static final VER_STR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x2d

    const/16 v8, 0x8

    .line 57
    const-string v1, "ignite.version"

    invoke-static {v1}, Lorg/apache/ignite/internal/IgniteProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    .line 59
    const-string v1, "ignite.build"

    invoke-static {v1}, Lorg/apache/ignite/internal/IgniteProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP:J

    .line 60
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    sget-wide v4, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    .line 62
    const-string v1, "ignite.revision"

    invoke-static {v1}, Lorg/apache/ignite/internal/IgniteProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    .line 63
    const-string v1, "ignite.rel.date"

    invoke-static {v1}, Lorg/apache/ignite/internal/IgniteProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->RELEASE_DATE_STR:Ljava/lang/String;

    .line 65
    sget-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "rev":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-sha1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->ACK_VER_STR:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->BUILD_TSTAMP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/lang/IgniteProductVersion;->fromString(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER:Lorg/apache/ignite/lang/IgniteProductVersion;

    .line 70
    return-void

    .line 65
    .end local v0    # "rev":Ljava/lang/String;
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/IgniteVersionUtils;->REV_HASH_STR:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method
