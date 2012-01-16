.class public Lcom/android/providers/contacts/ContactLocaleUtils;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# static fields
.field private static final nh:Ljava/lang/String;

.field private static final ni:Ljava/lang/String;

.field private static final nj:Ljava/lang/String;

.field private static nk:Lcom/android/providers/contacts/ContactLocaleUtils;


# instance fields
.field private nl:Ljava/util/HashMap;

.field private nm:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

.field private nn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->nh:Ljava/lang/String;

    .line 146
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->ni:Ljava/lang/String;

    .line 147
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->nj:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nl:Ljava/util/HashMap;

    .line 153
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nm:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 159
    return-void
.end method

.method private ao(I)I
    .locals 2
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->ni:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->nj:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 p1, 0x3

    .line 227
    :cond_0
    return p1
.end method

.method private c(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 4
    .parameter

    .prologue
    .line 186
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 187
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->ao(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    sget-object v2, Lcom/android/providers/contacts/ContactLocaleUtils;->nh:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 189
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 191
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->d(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 3
    .parameter

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    .line 196
    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 198
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils$ChineseContactUtils;-><init>(Lcom/android/providers/contacts/ContactLocaleUtils;Lcom/android/providers/contacts/ContactLocaleUtils$1;)V

    .line 199
    iget-object v1, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nl:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nm:Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;
    .locals 1
    .parameter

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->ao(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->d(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized ej()Lcom/android/providers/contacts/ContactLocaleUtils;
    .locals 2

    .prologue
    .line 216
    const-class v1, Lcom/android/providers/contacts/ContactLocaleUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->nk:Lcom/android/providers/contacts/ContactLocaleUtils;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/providers/contacts/ContactLocaleUtils;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactLocaleUtils;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->nk:Lcom/android/providers/contacts/ContactLocaleUtils;

    .line 219
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactLocaleUtils;->nk:Lcom/android/providers/contacts/ContactLocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public g(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->e(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->c(Ljava/lang/Integer;)Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactLocaleUtils$ContactLocaleUtilsBase;->d(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nn:Ljava/lang/String;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactLocaleUtils;->nn:Ljava/lang/String;

    goto :goto_0
.end method
