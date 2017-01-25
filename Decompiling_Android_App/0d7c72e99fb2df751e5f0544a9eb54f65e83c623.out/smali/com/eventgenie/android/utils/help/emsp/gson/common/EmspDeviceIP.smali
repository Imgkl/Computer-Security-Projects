.class public Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;
.super Ljava/lang/Object;
.source "EmspDeviceIP.java"


# instance fields
.field private ipv4:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ipv4"
    .end annotation
.end field

.field private ipv6:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ipv6"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIpv4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;->ipv4:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspDeviceIP;->ipv6:Ljava/lang/String;

    return-object v0
.end method
