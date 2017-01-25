.class public Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;
.super Lcom/genie_connect/android/net/container/gson/EntityGsonModel;
.source "PermissiongroupGsonModel.java"


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "permissiongroups"


# instance fields
.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private permissionFailureMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permissionFailureMessage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/genie_connect/android/net/container/gson/EntityGsonModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "permissiongroups"

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->name:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionFailureMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->permissionFailureMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->permissionFailureMessage:Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/entities/PermissiongroupGsonModel;->permissionFailureMessage:Ljava/lang/String;

    return-object v0
.end method
