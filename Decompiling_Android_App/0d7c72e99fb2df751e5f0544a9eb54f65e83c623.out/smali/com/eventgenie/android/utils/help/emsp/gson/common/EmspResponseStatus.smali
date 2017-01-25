.class public Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
.super Ljava/lang/Object;
.source "EmspResponseStatus.java"


# static fields
.field public static final ALREADY_EXISTS:I = 0x211

.field public static final BADREQUEST:I = 0x190

.field public static final CONFIGURATION_ERROR:I = 0x20a

.field public static final DEPENDENCY_ACCESS:I = 0x224

.field public static final DEVICE_REGISTRATION_FOR_DEVICEHANDLE_NOT_FOUND:I = 0x198

.field public static final DEVICE_REGISTRATION_FOR_DEVICEUID_AND_APPID_NOT_FOUND:I = 0x199

.field public static final ENDPOINT_LOCATION_FOR_LATLNG_NOT_FOUND:I = 0x196

.field public static final ENDPOINT_LOCATION_FOR_LOCATIONID_FOUND:I = 0x197

.field public static final ENDPOINT_LOCATION_FOR_SSID_LATLNG_NOT_FOUND:I = 0x196

.field public static final ENDPOINT_LOCATION_FOR_SSID_NOT_FOUND:I = 0x195

.field public static final FILE_UPLOAD_IO_ERROR:I = 0x1fe

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final INVALID_INPUT:I = 0x1a9

.field public static final INVALID_STATE:I = 0x1ab

.field public static final NOT_FOUND:I = 0x194

.field public static final NOT_IMPLEMENTED:I = 0x1f5

.field public static final READ_CSV_ERROR:I = 0x1ff

.field public static final SERVICE_UNAVAILABLE:I = 0x1f6

.field public static final SUCCESS:I = 0xc8

.field public static final TIMEDOUT:I = 0x20c

.field public static final UNAUTHORIZED:I = 0x191

.field public static final UNKNOWN:I = 0x212


# instance fields
.field private statusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field

.field private statusMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusMessage"
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
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmspResponseStatus [statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;->statusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
