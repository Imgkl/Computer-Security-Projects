.class public Lde/greenrobot/dao/selectable/StringSelectable;
.super Ljava/lang/Object;
.source "StringSelectable.java"

# interfaces
.implements Lde/greenrobot/dao/Selectable;


# instance fields
.field private mColumnName:Ljava/lang/String;

.field private mSelect:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "select"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mSelect:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/StringSelectable;
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;

    .prologue
    .line 22
    iget-object v0, p1, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    iput-object v0, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mColumnName:Ljava/lang/String;

    .line 24
    return-object p0
.end method

.method public as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mColumnName:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mColumnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mColumnName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    const-string v0, "\'%s\' as %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mSelect:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mColumnName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/greenrobot/dao/selectable/StringSelectable;->mSelect:Ljava/lang/String;

    goto :goto_0
.end method

.method public getColumnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, ""

    return-object v0
.end method
