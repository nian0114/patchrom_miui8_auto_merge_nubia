.class final Lcom/android/providers/settings/SettingsProvider$Arguments;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Arguments"
.end annotation


# static fields
.field private static final WHERE_PATTERN_NO_PARAM_IN_BRACKETS:Ljava/util/regex/Pattern;

.field private static final WHERE_PATTERN_NO_PARAM_NO_BRACKETS:Ljava/util/regex/Pattern;

.field private static final WHERE_PATTERN_WITH_PARAM_IN_BRACKETS:Ljava/util/regex/Pattern;

.field private static final WHERE_PATTERN_WITH_PARAM_NO_BRACKETS:Ljava/util/regex/Pattern;


# instance fields
.field public final name:Ljava/lang/String;

.field public final table:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1328
    const-string v0, "[\\s]*name[\\s]*=[\\s]*\\?[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_WITH_PARAM_NO_BRACKETS:Ljava/util/regex/Pattern;

    .line 1331
    const-string v0, "[\\s]*\\([\\s]*name[\\s]*=[\\s]*\\?[\\s]*\\)[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_WITH_PARAM_IN_BRACKETS:Ljava/util/regex/Pattern;

    .line 1334
    const-string v0, "[\\s]*\\([\\s]*name[\\s]*=[\\s]*[\'\"].*[\'\"][\\s]*\\)[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_NO_PARAM_IN_BRACKETS:Ljava/util/regex/Pattern;

    .line 1337
    const-string v0, "[\\s]*name[\\s]*=[\\s]*[\'\"].*[\'\"][\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_NO_PARAM_NO_BRACKETS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "supportAll"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1345
    .local v2, "segmentSize":I
    packed-switch v2, :pswitch_data_0

    .line 1380
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/android/providers/settings/EventLogTags;->writeUnsupportedSettingsQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v4, "Supported SQL:\n  uri content://some_table/some_property with null where and where args\n  uri content://some_table with query name=? and single name as arg\n  uri content://some_table with query name=some_name and null args\n  but got - uri:%1s, where:%2s whereArgs:%3s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1347
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_0
    if-eqz p2, :cond_2

    sget-object v4, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_WITH_PARAM_NO_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_WITH_PARAM_IN_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    array-length v4, p3

    if-ne v4, v6, :cond_2

    .line 1351
    aget-object v4, p3, v7

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    .line 1352
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/providers/settings/SettingsProvider$Arguments;->computeTableForSetting(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    .line 1375
    :goto_0
    return-void

    .line 1354
    :cond_2
    if-eqz p2, :cond_4

    sget-object v4, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_NO_PARAM_NO_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/providers/settings/SettingsProvider$Arguments;->WHERE_PATTERN_NO_PARAM_IN_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1357
    :cond_3
    const-string v4, "\'"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "\""

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 1359
    .local v3, "startIndex":I
    const-string v4, "\'"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "\""

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1361
    .local v0, "endIndex":I
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    .line 1362
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/providers/settings/SettingsProvider$Arguments;->computeTableForSetting(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    goto :goto_0

    .line 1364
    .end local v0    # "endIndex":I
    .end local v3    # "startIndex":I
    :cond_4
    if-eqz p4, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1365
    iput-object v5, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    .line 1366
    invoke-static {p1, v5}, Lcom/android/providers/settings/SettingsProvider$Arguments;->computeTableForSetting(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    goto :goto_0

    .line 1372
    :pswitch_1
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1373
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    .line 1374
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/providers/settings/SettingsProvider$Arguments;->computeTableForSetting(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    goto :goto_0

    .line 1345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static computeTableForSetting(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1392
    # invokes: Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider;->access$200(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "table":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1395
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    const-string v0, "secure"

    .line 1399
    :cond_0
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1400
    const-string v0, "global"

    .line 1403
    :cond_1
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1404
    const-string v0, "global"

    .line 1407
    :cond_2
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1408
    const-string v0, "secure"

    .line 1412
    :cond_3
    return-object v0
.end method
