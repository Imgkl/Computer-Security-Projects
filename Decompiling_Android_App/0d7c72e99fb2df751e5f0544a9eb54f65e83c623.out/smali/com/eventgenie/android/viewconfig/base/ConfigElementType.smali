.class public final enum Lcom/eventgenie/android/viewconfig/base/ConfigElementType;
.super Ljava/lang/Enum;
.source "ConfigElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/viewconfig/base/ConfigElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

.field public static final enum ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

.field public static final enum EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

.field public static final enum Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

.field public static final enum Map:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

.field public static final enum VerticalContainer:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    const-string v1, "Info"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 35
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    const-string v1, "EntityList"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 36
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    const-string v1, "VerticalContainer"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->VerticalContainer:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 37
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    const-string v1, "Map"

    invoke-direct {v0, v1, v5}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Map:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 38
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    const-string v1, "ActivityStream"

    invoke-direct {v0, v1, v6}, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v1, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->VerticalContainer:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Map:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->$VALUES:[Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/viewconfig/base/ConfigElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/viewconfig/base/ConfigElementType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->$VALUES:[Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    invoke-virtual {v0}, [Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    return-object v0
.end method
