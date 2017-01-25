.class Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;
.super Ljava/sql/DriverPropertyInfo;
.source "IgniteJdbcDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/IgniteJdbcDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyInfo"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iput-object p3, p0, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;->description:Ljava/lang/String;

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/ignite/IgniteJdbcDriver$1;

    .prologue
    .line 431
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "required"    # Z

    .prologue
    .line 469
    invoke-direct {p0, p1, p2}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iput-object p3, p0, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;->description:Ljava/lang/String;

    .line 472
    iput-boolean p4, p0, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;->required:Z

    .line 473
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteJdbcDriver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/IgniteJdbcDriver$1;

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .param p3, "required"    # Z

    .prologue
    .line 457
    invoke-direct {p0, p1, p2}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iput-boolean p3, p0, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;->required:Z

    .line 460
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/IgniteJdbcDriver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/IgniteJdbcDriver$1;

    .prologue
    .line 431
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/IgniteJdbcDriver$PropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
