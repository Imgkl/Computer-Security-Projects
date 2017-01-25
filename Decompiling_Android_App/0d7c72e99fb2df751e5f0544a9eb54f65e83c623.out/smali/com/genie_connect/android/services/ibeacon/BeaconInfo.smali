.class public Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
.super Ljava/lang/Object;
.source "BeaconInfo.java"


# instance fields
.field private UUID:Ljava/lang/String;

.field private allInfo:Ljava/lang/String;

.field private major:Ljava/lang/String;

.field private minor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v2, ""

    iput-object v2, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->UUID:Ljava/lang/String;

    .line 5
    const-string v2, "null"

    iput-object v2, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->major:Ljava/lang/String;

    .line 6
    const-string v2, "null"

    iput-object v2, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->minor:Ljava/lang/String;

    .line 7
    const-string v2, ""

    iput-object v2, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->allInfo:Ljava/lang/String;

    .line 11
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, "infos":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setAllInfo(Ljava/lang/String;)V

    .line 13
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setUUID(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setMajor(Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setMinor(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v1    # "infos":[Ljava/lang/String;
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setAllInfo(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setUUID(Ljava/lang/String;)V

    .line 19
    const-string v2, "null"

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setMajor(Ljava/lang/String;)V

    .line 20
    const-string v2, "null"

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->setMinor(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->allInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->major:Ljava/lang/String;

    return-object v0
.end method

.method public getMinor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->minor:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public setAllInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "allInfo"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->allInfo:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMajor(Ljava/lang/String;)V
    .locals 0
    .param p1, "major"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->major:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMinor(Ljava/lang/String;)V
    .locals 0
    .param p1, "minor"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->minor:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uUID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->UUID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconInfo [UUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->major:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->minor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
