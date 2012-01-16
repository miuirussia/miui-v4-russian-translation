.class public Lcom/android/providers/contacts/ProfileAggregator;
.super Lcom/android/providers/contacts/ContactAggregator;
.source "ProfileAggregator.java"


# instance fields
.field private fs:J


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ProfileAggregator;->b(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 57
    iget-wide v0, p0, Lcom/android/providers/contacts/ProfileAggregator;->fs:J

    return-wide v0
.end method

.method public a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public b(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "SELECT _id FROM contacts ORDER BY _id LIMIT 1"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 77
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->fs:J

    .line 78
    iget-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->fs:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/providers/contacts/ProfileAggregator;->f(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 85
    :goto_0
    iget-wide v0, p0, Lcom/android/providers/contacts/ProfileAggregator;->fs:J

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ProfileAggregator;->e(JJ)V

    .line 86
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/ProfileAggregator;->f(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ProfileAggregator;->fs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method protected b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method protected s(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    const-string v0, "profile"

    return-object v0
.end method
