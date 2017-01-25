.class public Luk/co/alt236/bluetoothlelib/resolvers/BluetoothClassResolver;
.super Ljava/lang/Object;
.source "BluetoothClassResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveDeviceClass(I)Ljava/lang/String;
    .locals 2
    .param p0, "btClass"    # I

    .prologue
    .line 8
    sparse-switch p0, :sswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown, Unknown (class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 10
    :sswitch_0
    const-string v0, "A/V, Camcorder"

    goto :goto_0

    .line 12
    :sswitch_1
    const-string v0, "A/V, Car Audio"

    goto :goto_0

    .line 14
    :sswitch_2
    const-string v0, "A/V, Handsfree"

    goto :goto_0

    .line 16
    :sswitch_3
    const-string v0, "A/V, Headphones"

    goto :goto_0

    .line 18
    :sswitch_4
    const-string v0, "A/V, HiFi Audio"

    goto :goto_0

    .line 20
    :sswitch_5
    const-string v0, "A/V, Loudspeaker"

    goto :goto_0

    .line 22
    :sswitch_6
    const-string v0, "A/V, Microphone"

    goto :goto_0

    .line 24
    :sswitch_7
    const-string v0, "A/V, Portable Audio"

    goto :goto_0

    .line 26
    :sswitch_8
    const-string v0, "A/V, Set Top Box"

    goto :goto_0

    .line 28
    :sswitch_9
    const-string v0, "A/V, Uncategorized"

    goto :goto_0

    .line 30
    :sswitch_a
    const-string v0, "A/V, VCR"

    goto :goto_0

    .line 32
    :sswitch_b
    const-string v0, "A/V, Video Camera"

    goto :goto_0

    .line 34
    :sswitch_c
    const-string v0, "A/V, Video Conferencing"

    goto :goto_0

    .line 36
    :sswitch_d
    const-string v0, "A/V, Video Display and Loudspeaker"

    goto :goto_0

    .line 38
    :sswitch_e
    const-string v0, "A/V, Video Gaming Toy"

    goto :goto_0

    .line 40
    :sswitch_f
    const-string v0, "A/V, Video Monitor"

    goto :goto_0

    .line 42
    :sswitch_10
    const-string v0, "A/V, Video Wearable Headset"

    goto :goto_0

    .line 44
    :sswitch_11
    const-string v0, "Computer, Desktop"

    goto :goto_0

    .line 46
    :sswitch_12
    const-string v0, "Computer, Handheld PC/PDA"

    goto :goto_0

    .line 48
    :sswitch_13
    const-string v0, "Computer, Laptop"

    goto :goto_0

    .line 50
    :sswitch_14
    const-string v0, "Computer, Palm Size PC/PDA"

    goto :goto_0

    .line 52
    :sswitch_15
    const-string v0, "Computer, Server"

    goto :goto_0

    .line 54
    :sswitch_16
    const-string v0, "Computer, Uncategorized"

    goto :goto_0

    .line 56
    :sswitch_17
    const-string v0, "Computer, Wearable"

    goto :goto_0

    .line 58
    :sswitch_18
    const-string v0, "Health, Blood Pressure"

    goto :goto_0

    .line 60
    :sswitch_19
    const-string v0, "Health, Data Display"

    goto :goto_0

    .line 62
    :sswitch_1a
    const-string v0, "Health, Glucose"

    goto :goto_0

    .line 64
    :sswitch_1b
    const-string v0, "Health, Pulse Oximeter"

    goto :goto_0

    .line 66
    :sswitch_1c
    const-string v0, "Health, Pulse Rate"

    goto :goto_0

    .line 68
    :sswitch_1d
    const-string v0, "Health, Thermometer"

    goto :goto_0

    .line 70
    :sswitch_1e
    const-string v0, "Health, Uncategorized"

    goto :goto_0

    .line 72
    :sswitch_1f
    const-string v0, "Health, Weighting"

    goto :goto_0

    .line 74
    :sswitch_20
    const-string v0, "Phone, Cellular"

    goto :goto_0

    .line 76
    :sswitch_21
    const-string v0, "Phone, Cordless"

    goto :goto_0

    .line 78
    :sswitch_22
    const-string v0, "Phone, ISDN"

    goto :goto_0

    .line 80
    :sswitch_23
    const-string v0, "Phone, Modem or Gateway"

    goto :goto_0

    .line 82
    :sswitch_24
    const-string v0, "Phone, Smart"

    goto :goto_0

    .line 84
    :sswitch_25
    const-string v0, "Phone, Uncategorized"

    goto :goto_0

    .line 86
    :sswitch_26
    const-string v0, "Toy, Controller"

    goto :goto_0

    .line 88
    :sswitch_27
    const-string v0, "Toy, Doll/Action Figure"

    goto :goto_0

    .line 90
    :sswitch_28
    const-string v0, "Toy, Game"

    goto :goto_0

    .line 92
    :sswitch_29
    const-string v0, "Toy, Robot"

    goto :goto_0

    .line 94
    :sswitch_2a
    const-string v0, "Toy, Uncategorized"

    goto/16 :goto_0

    .line 96
    :sswitch_2b
    const-string v0, "Toy, Vehicle"

    goto/16 :goto_0

    .line 98
    :sswitch_2c
    const-string v0, "Wearable, Glasses"

    goto/16 :goto_0

    .line 100
    :sswitch_2d
    const-string v0, "Wearable, Helmet"

    goto/16 :goto_0

    .line 102
    :sswitch_2e
    const-string v0, "Wearable, Jacket"

    goto/16 :goto_0

    .line 104
    :sswitch_2f
    const-string v0, "Wearable, Pager"

    goto/16 :goto_0

    .line 106
    :sswitch_30
    const-string v0, "Wearable, Uncategorized"

    goto/16 :goto_0

    .line 108
    :sswitch_31
    const-string v0, "Wearable, Wrist Watch"

    goto/16 :goto_0

    .line 8
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_16
        0x104 -> :sswitch_11
        0x108 -> :sswitch_15
        0x10c -> :sswitch_13
        0x110 -> :sswitch_12
        0x114 -> :sswitch_14
        0x118 -> :sswitch_17
        0x200 -> :sswitch_25
        0x204 -> :sswitch_20
        0x208 -> :sswitch_21
        0x20c -> :sswitch_24
        0x210 -> :sswitch_23
        0x214 -> :sswitch_22
        0x400 -> :sswitch_9
        0x404 -> :sswitch_10
        0x408 -> :sswitch_2
        0x410 -> :sswitch_6
        0x414 -> :sswitch_5
        0x418 -> :sswitch_3
        0x41c -> :sswitch_7
        0x420 -> :sswitch_1
        0x424 -> :sswitch_8
        0x428 -> :sswitch_4
        0x42c -> :sswitch_a
        0x430 -> :sswitch_b
        0x434 -> :sswitch_0
        0x438 -> :sswitch_f
        0x43c -> :sswitch_d
        0x440 -> :sswitch_c
        0x448 -> :sswitch_e
        0x700 -> :sswitch_30
        0x704 -> :sswitch_31
        0x708 -> :sswitch_2f
        0x70c -> :sswitch_2e
        0x710 -> :sswitch_2d
        0x714 -> :sswitch_2c
        0x800 -> :sswitch_2a
        0x804 -> :sswitch_29
        0x808 -> :sswitch_2b
        0x80c -> :sswitch_27
        0x810 -> :sswitch_26
        0x814 -> :sswitch_28
        0x900 -> :sswitch_1e
        0x904 -> :sswitch_18
        0x908 -> :sswitch_1d
        0x90c -> :sswitch_1f
        0x910 -> :sswitch_1a
        0x914 -> :sswitch_1b
        0x918 -> :sswitch_1c
        0x91c -> :sswitch_19
    .end sparse-switch
.end method
