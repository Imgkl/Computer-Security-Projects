.class public Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;
.super Ljava/lang/Object;
.source "EmspDeviceRegistrationResponse.java"


# instance fields
.field private deviceRegistration:Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceRegistration"
    .end annotation
.end field

.field private status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceRegistration()Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->deviceRegistration:Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->deviceRegistration:Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->deviceRegistration:Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    return-object v0
.end method

.method public getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmspDeviceRegistrationResponse [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceRegistration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistrationResponse;->deviceRegistration:Lcom/eventgenie/android/utils/help/emsp/gson/registration/EmspDeviceRegistration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
