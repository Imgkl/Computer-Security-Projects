.class public final enum Ljavax/cache/event/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/cache/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/cache/event/EventType;

.field public static final enum CREATED:Ljavax/cache/event/EventType;

.field public static final enum EXPIRED:Ljavax/cache/event/EventType;

.field public static final enum REMOVED:Ljavax/cache/event/EventType;

.field public static final enum UPDATED:Ljavax/cache/event/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Ljavax/cache/event/EventType;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v2}, Ljavax/cache/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/cache/event/EventType;->CREATED:Ljavax/cache/event/EventType;

    .line 27
    new-instance v0, Ljavax/cache/event/EventType;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v3}, Ljavax/cache/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/cache/event/EventType;->UPDATED:Ljavax/cache/event/EventType;

    .line 33
    new-instance v0, Ljavax/cache/event/EventType;

    const-string v1, "REMOVED"

    invoke-direct {v0, v1, v4}, Ljavax/cache/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/cache/event/EventType;->REMOVED:Ljavax/cache/event/EventType;

    .line 39
    new-instance v0, Ljavax/cache/event/EventType;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Ljavax/cache/event/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/cache/event/EventType;->EXPIRED:Ljavax/cache/event/EventType;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/cache/event/EventType;

    sget-object v1, Ljavax/cache/event/EventType;->CREATED:Ljavax/cache/event/EventType;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/cache/event/EventType;->UPDATED:Ljavax/cache/event/EventType;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/cache/event/EventType;->REMOVED:Ljavax/cache/event/EventType;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/cache/event/EventType;->EXPIRED:Ljavax/cache/event/EventType;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/cache/event/EventType;->$VALUES:[Ljavax/cache/event/EventType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/cache/event/EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Ljavax/cache/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/cache/event/EventType;

    return-object v0
.end method

.method public static values()[Ljavax/cache/event/EventType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Ljavax/cache/event/EventType;->$VALUES:[Ljavax/cache/event/EventType;

    invoke-virtual {v0}, [Ljavax/cache/event/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/cache/event/EventType;

    return-object v0
.end method
