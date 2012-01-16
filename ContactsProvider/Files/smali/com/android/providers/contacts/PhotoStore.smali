.class public Lcom/android/providers/contacts/PhotoStore;
.super Ljava/lang/Object;
.source "PhotoStore.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private eo:Landroid/database/sqlite/SQLiteDatabase;

.field private final pi:Ljava/lang/String;

.field private final pj:Ljava/util/Map;

.field private pk:J

.field private final pl:Ljava/io/File;

.field private final pm:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, "photos"

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pi:Ljava/lang/String;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "photos"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    .line 70
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create photo storage directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p2, p0, Lcom/android/providers/contacts/PhotoStore;->pm:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    .line 78
    invoke-virtual {p0}, Lcom/android/providers/contacts/PhotoStore;->initialize()V

    .line 79
    return-void
.end method

.method private D(J)Ljava/io/File;
    .locals 3
    .parameter

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private E(J)V
    .locals 6
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    iget-wide v3, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "photo_files"

    const-string v2, "photo_files._id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private a(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    iget-wide v2, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 259
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    iget-wide v3, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    iget-wide v5, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long/2addr v3, v5

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 229
    if-nez v0, :cond_0

    .line 230
    const-string v0, "Could not clean up file %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public C(J)Lcom/android/providers/contacts/PhotoStore$Entry;
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    return-object v0
.end method

.method public a(Lcom/android/providers/contacts/PhotoProcessor;)J
    .locals 2
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/PhotoStore;->a(Lcom/android/providers/contacts/PhotoProcessor;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/android/providers/contacts/PhotoProcessor;Z)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->fy()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 186
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 187
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->fB()I

    move-result v4

    .line 188
    if-nez p2, :cond_0

    if-gt v5, v4, :cond_0

    if-le v1, v4, :cond_2

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->fz()[B

    move-result-object v6

    .line 195
    const-string v4, "img"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-static {v4, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 196
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 197
    invoke-virtual {p1}, Lcom/android/providers/contacts/PhotoProcessor;->fz()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 198
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 202
    const-string v7, "height"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v1, "width"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v1, "filesize"

    array-length v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "photo_files"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 206
    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/PhotoStore;->D(J)Ljava/io/File;

    move-result-object v5

    .line 209
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    new-instance v6, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v6, v5}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 211
    iget-wide v7, v6, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v7, v8, v6}, Lcom/android/providers/contacts/PhotoStore;->a(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_0
    return-wide v0

    .line 215
    :catch_0
    move-exception v1

    :goto_1
    move-object v4, v0

    .line 220
    :cond_1
    if-eqz v4, :cond_2

    .line 221
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/PhotoStore;->a(Ljava/io/File;)V

    :cond_2
    move-wide v0, v2

    .line 224
    goto :goto_0

    .line 215
    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_1
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 88
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/PhotoStore;->a(Ljava/io/File;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->eo:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pm:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->eo:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "photo_files"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    .line 97
    return-void
.end method

.method public e(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .parameter

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 149
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanup removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 152
    invoke-virtual {p0, v2, v3}, Lcom/android/providers/contacts/PhotoStore;->remove(J)V

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->pj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 159
    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->pk:J

    return-wide v0
.end method

.method public final initialize()V
    .locals 7

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pl:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 117
    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 120
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 122
    :try_start_0
    new-instance v4, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v4, v3}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 123
    iget-wide v5, v4, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v5, v6, v4}, Lcom/android/providers/contacts/PhotoStore;->a(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v4

    .line 126
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/PhotoStore;->a(Ljava/io/File;)V

    goto :goto_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->pm:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->eo:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public remove(J)V
    .locals 1
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->D(J)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoStore;->a(Ljava/io/File;)V

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->E(J)V

    .line 240
    return-void
.end method
