.class public Lcom/android/providers/contacts/CommonNicknameCache;
.super Ljava/lang/Object;
.source "CommonNicknameCache.java"


# instance fields
.field private em:Ljava/util/BitSet;

.field private en:Ljava/util/HashMap;

.field private final eo:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->en:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/android/providers/contacts/CommonNicknameCache;->eo:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    return-void
.end method

.method private bE()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 70
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->em:Ljava/util/BitSet;

    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "nickname_lookup"

    sget-object v2, Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupPreloadQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move v0, v8

    .line 76
    :goto_0
    if-ge v0, v2, :cond_0

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 78
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 80
    iget-object v4, p0, Lcom/android/providers/contacts/CommonNicknameCache;->em:Ljava/util/BitSet;

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->em:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/providers/contacts/CommonNicknameCache;->bE()V

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 96
    iget-object v2, p0, Lcom/android/providers/contacts/CommonNicknameCache;->em:Ljava/util/BitSet;

    and-int/lit16 v0, v0, 0x1fff

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :goto_0
    return-object v1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/CommonNicknameCache;->en:Ljava/util/HashMap;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->en:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->en:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 105
    if-nez v0, :cond_2

    .line 106
    monitor-exit v2

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 110
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-nez v0, :cond_3

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->o(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    if-nez v2, :cond_4

    move-object v0, v1

    .line 115
    :goto_2
    iget-object v1, p0, Lcom/android/providers/contacts/CommonNicknameCache;->en:Ljava/util/HashMap;

    monitor-enter v1

    .line 116
    :try_start_2
    iget-object v3, p0, Lcom/android/providers/contacts/CommonNicknameCache;->en:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    :cond_3
    move-object v1, v0

    .line 119
    goto :goto_0

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 117
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method protected o(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "nickname_lookup"

    sget-object v2, Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 138
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 139
    if-lez v2, :cond_0

    .line 140
    new-array v5, v2, [Ljava/lang/String;

    move v0, v8

    .line 141
    :goto_0
    if-ge v0, v2, :cond_0

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 143
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 149
    return-object v5

    .line 147
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
