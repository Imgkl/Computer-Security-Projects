.class public final Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;
.super Ljava/lang/Object;
.source "AdRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARCEL_RECORD_DATA:Ljava/lang/String; = "record_data"

.field private static final PARCEL_RECORD_LENGTH:Ljava/lang/String; = "record_length"

.field private static final PARCEL_RECORD_TYPE:Ljava/lang/String; = "record_type"

.field public static final TYPE_CONNECTION_INTERVAL_RANGE:I = 0x12

.field public static final TYPE_DEVICE_CLASS:I = 0xd

.field public static final TYPE_FLAGS:I = 0x1

.field public static final TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field public static final TYPE_LOCAL_NAME_SHORT:I = 0x8

.field public static final TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field public static final TYPE_SECURITY_MANAGER_OOB_FLAGS:I = 0x11

.field public static final TYPE_SERVICE_DATA:I = 0x16

.field public static final TYPE_SERVICE_UUIDS_LIST_128BIT:I = 0x15

.field public static final TYPE_SERVICE_UUIDS_LIST_16BIT:I = 0x14

.field public static final TYPE_SIMPLE_PAIRING_HASH_C:I = 0xe

.field public static final TYPE_SIMPLE_PAIRING_RANDOMIZER_R:I = 0xf

.field public static final TYPE_TK_VALUE:I = 0x10

.field public static final TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final TYPE_UUID128:I = 0x7

.field public static final TYPE_UUID128_INC:I = 0x6

.field public static final TYPE_UUID16:I = 0x3

.field public static final TYPE_UUID16_INC:I = 0x2

.field public static final TYPE_UUID32:I = 0x5

.field public static final TYPE_UUID32_INC:I = 0x4


# instance fields
.field private final mData:[B

.field private final mLength:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord$1;

    invoke-direct {v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord$1;-><init>()V

    sput-object v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "type"    # I
    .param p3, "data"    # [B

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mLength:I

    .line 150
    iput p2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mType:I

    .line 151
    iput-object p3, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mData:[B

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "record_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mLength:I

    .line 157
    const-string v1, "record_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mType:I

    .line 158
    const-string v1, "record_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mData:[B

    .line 159
    return-void
.end method

.method private static getHumanReadableAdType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 199
    sparse-switch p0, :sswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AdRecord Structure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 201
    :sswitch_0
    const-string v0, "Slave Connection Interval Range"

    goto :goto_0

    .line 203
    :sswitch_1
    const-string v0, "Class of device"

    goto :goto_0

    .line 205
    :sswitch_2
    const-string v0, "Flags"

    goto :goto_0

    .line 207
    :sswitch_3
    const-string v0, "Manufacturer Specific Data"

    goto :goto_0

    .line 209
    :sswitch_4
    const-string v0, "Name (Complete)"

    goto :goto_0

    .line 211
    :sswitch_5
    const-string v0, "Name (Short)"

    goto :goto_0

    .line 213
    :sswitch_6
    const-string v0, "Security Manager OOB Flags"

    goto :goto_0

    .line 215
    :sswitch_7
    const-string v0, "Service UUIDs (128bit)"

    goto :goto_0

    .line 217
    :sswitch_8
    const-string v0, "Service UUIDs (16bit)"

    goto :goto_0

    .line 219
    :sswitch_9
    const-string v0, "Service Data"

    goto :goto_0

    .line 221
    :sswitch_a
    const-string v0, "Simple Pairing Hash C"

    goto :goto_0

    .line 223
    :sswitch_b
    const-string v0, "Simple Pairing Randomizer R"

    goto :goto_0

    .line 225
    :sswitch_c
    const-string v0, "TK Value"

    goto :goto_0

    .line 227
    :sswitch_d
    const-string v0, "Transmission Power Level"

    goto :goto_0

    .line 229
    :sswitch_e
    const-string v0, "Complete list of 128-bit UUIDs available"

    goto :goto_0

    .line 231
    :sswitch_f
    const-string v0, "More 128-bit UUIDs available"

    goto :goto_0

    .line 233
    :sswitch_10
    const-string v0, "Complete list of 16-bit UUIDs available"

    goto :goto_0

    .line 235
    :sswitch_11
    const-string v0, "More 16-bit UUIDs available"

    goto :goto_0

    .line 237
    :sswitch_12
    const-string v0, "Complete list of 32-bit UUIDs available"

    goto :goto_0

    .line 239
    :sswitch_13
    const-string v0, "More 32-bit UUIDs available"

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_11
        0x3 -> :sswitch_10
        0x4 -> :sswitch_13
        0x5 -> :sswitch_12
        0x6 -> :sswitch_f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_d
        0xd -> :sswitch_1
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_6
        0x12 -> :sswitch_0
        0x14 -> :sswitch_8
        0x15 -> :sswitch_7
        0x16 -> :sswitch_9
        0xff -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mData:[B

    return-object v0
.end method

.method public getHumanReadableType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mType:I

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getHumanReadableAdType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mLength:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRecord [mLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHumanReadableType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getHumanReadableType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 191
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "record_length"

    iget v2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v1, "record_type"

    iget v2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v1, "record_data"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 196
    return-void
.end method
