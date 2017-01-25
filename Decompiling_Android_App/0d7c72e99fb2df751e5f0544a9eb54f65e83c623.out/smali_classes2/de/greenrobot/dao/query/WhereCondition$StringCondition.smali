.class public Lde/greenrobot/dao/query/WhereCondition$StringCondition;
.super Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringCondition"
.end annotation


# instance fields
.field protected final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 164
    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-direct {p0, p2}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 169
    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 173
    invoke-direct {p0, p2}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "masterTableName"    # Ljava/lang/String;
    .param p3, "masterTablePrefix"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lde/greenrobot/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    return-void
.end method
