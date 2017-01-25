.class public final enum Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;
.super Ljava/lang/Enum;
.source "IBeaconUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IBeaconDistanceDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

.field public static final enum FAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

.field public static final enum IMMEDIATE:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

.field public static final enum NEAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

.field public static final enum UNKNOWN:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->IMMEDIATE:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    .line 85
    new-instance v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    const-string v1, "NEAR"

    invoke-direct {v0, v1, v3}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->NEAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    .line 86
    new-instance v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    const-string v1, "FAR"

    invoke-direct {v0, v1, v4}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->FAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    .line 87
    new-instance v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->UNKNOWN:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    sget-object v1, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->IMMEDIATE:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    aput-object v1, v0, v2

    sget-object v1, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->NEAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    aput-object v1, v0, v3

    sget-object v1, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->FAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    aput-object v1, v0, v4

    sget-object v1, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->UNKNOWN:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    aput-object v1, v0, v5

    sput-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->$VALUES:[Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    return-object v0
.end method

.method public static values()[Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->$VALUES:[Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    invoke-virtual {v0}, [Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    return-object v0
.end method
