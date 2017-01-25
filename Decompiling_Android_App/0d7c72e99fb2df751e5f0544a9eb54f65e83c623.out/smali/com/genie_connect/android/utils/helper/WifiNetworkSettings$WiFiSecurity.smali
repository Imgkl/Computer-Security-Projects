.class public final enum Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
.super Ljava/lang/Enum;
.source "WifiNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WiFiSecurity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

.field public static final enum OPEN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

.field public static final enum UNKNWOWN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

.field public static final enum WEP:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

.field public static final enum WPA:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

.field public static final enum WPA2:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;


# instance fields
.field private final security:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3, v3}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->OPEN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .line 90
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    const-string v1, "WEP"

    invoke-direct {v0, v1, v4, v4}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WEP:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .line 91
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v5, v5}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WPA:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .line 92
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v6, v6}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WPA2:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .line 93
    new-instance v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    const-string v1, "UNKNWOWN"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->UNKNWOWN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->OPEN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WEP:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WPA:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WPA2:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->UNKNWOWN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    aput-object v1, v0, v7

    sput-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->$VALUES:[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "security"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->security:I

    .line 98
    return-void
.end method

.method public static fromInt(I)Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->values()[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 119
    .local v3, "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    iget v4, v3, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->security:I

    if-ne v4, p0, :cond_0

    .line 123
    .end local v3    # "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :goto_1
    return-object v3

    .line 118
    .restart local v3    # "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :cond_1
    sget-object v3, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->UNKNWOWN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->values()[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 128
    .local v3, "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    invoke-virtual {v3}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    .end local v3    # "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :goto_1
    return-object v3

    .line 127
    .restart local v3    # "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "ws":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    :cond_1
    sget-object v3, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->UNKNWOWN:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->$VALUES:[Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    invoke-virtual {v0}, [Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    return-object v0
.end method


# virtual methods
.method public getAndroidFriendlyString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$1;->$SwitchMap$com$genie_connect$android$utils$helper$WifiNetworkSettings$WiFiSecurity:[I

    invoke-virtual {p0}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    const-string v0, "None"

    goto :goto_0

    .line 105
    :pswitch_1
    const-string v0, "Unknown"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "WEP"

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "WPA/WPA2 PSK"

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "WPA/WPA2 PSK"

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
