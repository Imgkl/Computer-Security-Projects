.class public Lcom/genie_connect/common/services/dss/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/genie_connect/common/services/dss/Version;->mName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/genie_connect/common/services/dss/Version;->mTimestamp:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/Version;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/Version;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method
