.class public final enum Lde/greenrobot/dao/query/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/greenrobot/dao/query/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/greenrobot/dao/query/FieldType;

.field public static final enum Boolean:Lde/greenrobot/dao/query/FieldType;

.field public static final enum ByteArray:Lde/greenrobot/dao/query/FieldType;

.field public static final enum Double:Lde/greenrobot/dao/query/FieldType;

.field public static final enum Int:Lde/greenrobot/dao/query/FieldType;

.field public static final enum Long:Lde/greenrobot/dao/query/FieldType;

.field public static final enum String:Lde/greenrobot/dao/query/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lde/greenrobot/dao/query/FieldType;

    const-string v1, "String"

    invoke-direct {v0, v1, v3}, Lde/greenrobot/dao/query/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->String:Lde/greenrobot/dao/query/FieldType;

    .line 5
    new-instance v0, Lde/greenrobot/dao/query/FieldType;

    const-string v1, "Long"

    invoke-direct {v0, v1, v4}, Lde/greenrobot/dao/query/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->Long:Lde/greenrobot/dao/query/FieldType;

    .line 6
    new-instance v0, Lde/greenrobot/dao/query/FieldType;

    const-string v1, "Int"

    invoke-direct {v0, v1, v5}, Lde/greenrobot/dao/query/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->Int:Lde/greenrobot/dao/query/FieldType;

    .line 7
    new-instance v0, Lde/greenrobot/dao/query/FieldType;

    const-string v1, "Double"

    invoke-direct {v0, v1, v6}, Lde/greenrobot/dao/query/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->Double:Lde/greenrobot/dao/query/FieldType;

    .line 8
    new-instance v0, Lde/greenrobot/dao/query/FieldType;

    const-string v1, "ByteArray"

    invoke-direct {v0, v1, v7}, Lde/greenrobot/dao/query/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->ByteArray:Lde/greenrobot/dao/query/FieldType;

    .line 9
    new-instance v0, Lde/greenrobot/dao/query/FieldType;

    const-string v1, "Boolean"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/greenrobot/dao/query/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->Boolean:Lde/greenrobot/dao/query/FieldType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lde/greenrobot/dao/query/FieldType;

    sget-object v1, Lde/greenrobot/dao/query/FieldType;->String:Lde/greenrobot/dao/query/FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lde/greenrobot/dao/query/FieldType;->Long:Lde/greenrobot/dao/query/FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lde/greenrobot/dao/query/FieldType;->Int:Lde/greenrobot/dao/query/FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lde/greenrobot/dao/query/FieldType;->Double:Lde/greenrobot/dao/query/FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lde/greenrobot/dao/query/FieldType;->ByteArray:Lde/greenrobot/dao/query/FieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/greenrobot/dao/query/FieldType;->Boolean:Lde/greenrobot/dao/query/FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lde/greenrobot/dao/query/FieldType;->$VALUES:[Lde/greenrobot/dao/query/FieldType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/greenrobot/dao/query/FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lde/greenrobot/dao/query/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/query/FieldType;

    return-object v0
.end method

.method public static values()[Lde/greenrobot/dao/query/FieldType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lde/greenrobot/dao/query/FieldType;->$VALUES:[Lde/greenrobot/dao/query/FieldType;

    invoke-virtual {v0}, [Lde/greenrobot/dao/query/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/greenrobot/dao/query/FieldType;

    return-object v0
.end method
