.class public Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;
.super Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/dao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyCondition"
.end annotation


# instance fields
.field public final op:Ljava/lang/String;

.field public final property:Lde/greenrobot/dao/Property;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Property;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 126
    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->property:Lde/greenrobot/dao/Property;

    .line 127
    iput-object p2, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/Property;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1, p3}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->checkValueForType(Lde/greenrobot/dao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 132
    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->property:Lde/greenrobot/dao/Property;

    .line 133
    iput-object p2, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/Property;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "property"    # Lde/greenrobot/dao/Property;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1, p3}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->checkValuesForType(Lde/greenrobot/dao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/greenrobot/dao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 138
    iput-object p1, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->property:Lde/greenrobot/dao/Property;

    .line 139
    iput-object p2, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 140
    return-void
.end method

.method private static checkValueForType(Lde/greenrobot/dao/Property;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "property"    # Lde/greenrobot/dao/Property;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    new-instance v4, Lde/greenrobot/dao/DaoException;

    const-string v5, "Illegal value: found array, but simple object required"

    invoke-direct {v4, v5}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_0
    iget-object v3, p0, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    .line 81
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/Date;

    if-ne v3, v6, :cond_3

    .line 82
    instance-of v4, p1, Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\' \'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 84
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    check-cast p1, Ljava/util/Date;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 112
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    :goto_0
    return-object p1

    .line 86
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p1, Ljava/lang/Long;

    if-nez v4, :cond_1

    .line 89
    new-instance v4, Lde/greenrobot/dao/DaoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal date value: expected java.util.Date or Long for value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_3
    iget-object v6, p0, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    const-class v7, Ljava/lang/Boolean;

    if-ne v6, v7, :cond_1

    .line 92
    :cond_4
    instance-of v6, p1, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 93
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 94
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v6, p1, Ljava/lang/Number;

    if-eqz v6, :cond_7

    move-object v4, p1

    .line 95
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 96
    .local v1, "intValue":I
    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    .line 97
    new-instance v4, Lde/greenrobot/dao/DaoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal boolean value: numbers must be 0 or 1, but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    .end local v1    # "intValue":I
    :cond_7
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v2, p1

    .line 100
    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "stringValue":Ljava/lang/String;
    const-string v6, "TRUE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_8
    const-string v5, "FALSE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_0

    .line 106
    :cond_9
    new-instance v4, Lde/greenrobot/dao/DaoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insesnsitive), but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static checkValuesForType(Lde/greenrobot/dao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "property"    # Lde/greenrobot/dao/Property;
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lde/greenrobot/dao/DaoException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 117
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->checkValueForType(Lde/greenrobot/dao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "masterTableName"    # Ljava/lang/String;
    .param p3, "masterTablePrefix"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 145
    iget-object v1, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->property:Lde/greenrobot/dao/Property;

    invoke-virtual {v1}, Lde/greenrobot/dao/Property;->getColumnPrefix()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->property:Lde/greenrobot/dao/Property;

    invoke-virtual {v2}, Lde/greenrobot/dao/Property;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/dao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
