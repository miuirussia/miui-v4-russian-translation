.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredPostal.java"


# instance fields
.field private final n:[Ljava/lang/String;

.field private final o:Lcom/android/providers/contacts/PostalSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->n:[Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->o:Lcom/android/providers/contacts/PostalSplitter;

    .line 51
    return-void
.end method

.method private a(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    const-string v0, "data1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 84
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->n:[Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->a(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 86
    :goto_1
    new-instance v2, Lcom/android/providers/contacts/PostalSplitter$Postal;

    invoke-direct {v2}, Lcom/android/providers/contacts/PostalSplitter$Postal;-><init>()V

    .line 88
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->o:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/PostalSplitter;->a(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, p2}, Lcom/android/providers/contacts/PostalSplitter$Postal;->c(Landroid/content/ContentValues;)V

    .line 97
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 83
    goto :goto_0

    :cond_2
    move v1, v2

    .line 84
    goto :goto_1

    .line 91
    :cond_3
    if-nez v0, :cond_0

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->n:[Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->b(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :cond_4
    invoke-virtual {v2, p1}, Lcom/android/providers/contacts/PostalSplitter$Postal;->b(Landroid/content/ContentValues;)V

    .line 94
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->o:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/PostalSplitter;->a(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "data1"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p5, p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 57
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->al(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public a(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 107
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 64
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 70
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
