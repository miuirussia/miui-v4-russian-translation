.class public Lcom/android/providers/contacts/ProfileDatabaseHelper;
.super Lcom/android/providers/contacts/ContactsDatabaseHelper;
.source "ProfileDatabaseHelper.java"


# static fields
.field private static cT:Lcom/android/providers/contacts/ProfileDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->cT:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;
    .locals 4
    .parameter

    .prologue
    .line 53
    const-class v1, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->cT:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;

    const-string v2, "profile.db"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/android/providers/contacts/ProfileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->cT:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ProfileDatabaseHelper;->cT:Lcom/android/providers/contacts/ProfileDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(JJILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJJ)V

    return-void
.end method

.method public bridge synthetic a(JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/TransactionContext;J)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic a(JJ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/android/providers/contacts/TransactionContext;JZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected aD()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic aE()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aE()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aG()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aG()V

    return-void
.end method

.method public bridge synthetic aH()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aH()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aI()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aI()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aJ()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aJ()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aK()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aK()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aL()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aL()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aM()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aM()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aN()J
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aN()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic aO()Lcom/android/providers/contacts/NameSplitter;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aO()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic aP()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aP()V

    return-void
.end method

.method public bridge synthetic aQ()Z
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(JJLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(J)V

    return-void
.end method

.method public bridge synthetic b(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJ)V

    return-void
.end method

.method public bridge synthetic b(JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJJ)V

    return-void
.end method

.method public bridge synthetic b(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->c(J)V

    return-void
.end method

.method protected c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter

    .prologue
    .line 66
    sget-object v1, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->gx:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 67
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 68
    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "seq"

    const-wide v5, 0x7fffffff80000000L

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v3, "sqlite_sequence"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->d(J)V

    return-void
.end method

.method public bridge synthetic d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic e(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->e(J)V

    return-void
.end method

.method public bridge synthetic e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic f(J)I
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic g(J)J
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->h(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic i(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->j(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public bridge synthetic onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic y(I)I
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->y(I)I

    move-result v0

    return v0
.end method
