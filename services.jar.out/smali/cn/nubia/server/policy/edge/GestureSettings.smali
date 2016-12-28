.class public Lcn/nubia/server/policy/edge/GestureSettings;
.super Ljava/lang/Object;
.source "GestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;
    }
.end annotation


# static fields
.field public static final ALL_EDGE_SWITCH:[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field private static final EDGE_DATABASE:Ljava/lang/String; = "content://cn.nubia.edge/fit_manager"

.field private static final EDGE_DATABASE_URI:Landroid/net/Uri;

.field public static final ENABLE_CZONE:Ljava/lang/String; = "nubia_edge_enable_czone"

.field public static final SWITCH_DOUBLE_CLICK:Ljava/lang/String; = "nubia_edge_double_click"

.field public static final SWITCH_DOUBLE_CLICK_OFF_VALUE:Ljava/lang/String; = "00"

.field public static final SWITCH_DOUBLE_SLIDE:Ljava/lang/String; = "nubia_edge_double_side_move"

.field public static final SWITCH_INWARD_SLIDE:Ljava/lang/String; = "nubia_edge_move_in_switch"

.field public static final SWITCH_LOOP_SLIDE:Ljava/lang/String; = "nubia_edge_move_loop"

.field public static final SWITCH_SINGLE_SLIDE:Ljava/lang/String; = "nubia_edge_single_move_switch"

.field public static final SWITCH_SINGLE_SLIDE_OFF_VALUE:Ljava/lang/String; = "off"

.field public static final SWITCH_SINGLE_SLIDE_SWITCH_VALUE:Ljava/lang/String; = "switch_app"

.field private static final TAG:Ljava/lang/String; = "GestureSettings"

.field static sInstance:Lcn/nubia/server/policy/edge/GestureSettings;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastEdgeTpState:I

.field private mLoadSettingsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

.field private mSettingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "content://cn.nubia.edge/fit_manager"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nubia_edge_single_move_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nubia_edge_move_in_switch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nubia_edge_double_side_move"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nubia_edge_move_loop"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "nubia_edge_double_click"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    iput-object p1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    new-instance v1, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mObserver:Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/server/policy/edge/GestureSettings$1;

    invoke-direct {v2, p0}, Lcn/nubia/server/policy/edge/GestureSettings$1;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->loadSettings()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->getAllDatabase()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/GestureSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->updateEdgeTpState()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/GestureSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/GestureSettings;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    iget v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/policy/edge/GestureSettings;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/GestureSettings;->getValue(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/GestureSettings;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/GestureSettings;

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    return-object v0
.end method

.method private getAllDatabase()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name IN(?,?,?,?,?,?,?,?)"

    sget-object v4, Lcn/nubia/server/policy/edge/GestureSettings;->ALL_EDGE_SWITCH:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "GestureSettings"

    const-string v1, "edge cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "GestureSettings"

    const-string v1, "edge cursor\'s count is less than zero!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "key":Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "GestureSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method private getValue(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcn/nubia/server/policy/edge/GestureSettings;->getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private getValue(Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/policy/edge/GestureSettings;->EDGE_DATABASE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcn/nubia/server/policy/edge/GestureSettings;->getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method private getValueForCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_1

    const-string v2, "GestureSettings"

    const-string v3, "edge cursor is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "GestureSettings"

    const-string v3, "edge cursor\'s count is less than zero!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "value"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_3

    const-string v2, "GestureSettings"

    const-string v3, "edge database column named value not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isNeedUserEdgeTP()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_edge_enable_czone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "nubia_edge_single_move_switch"

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nubia_edge_move_in_switch"

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nubia_edge_double_side_move"

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nubia_edge_move_loop"

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "nubia_edge_double_click"

    invoke-virtual {p0, v3}, Lcn/nubia/server/policy/edge/GestureSettings;->isGestureEnable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcn/nubia/server/policy/edge/GestureSettings$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/policy/edge/GestureSettings$2;-><init>(Lcn/nubia/server/policy/edge/GestureSettings;)V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLoadSettingsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateEdgeTpState()V
    .locals 2

    .prologue
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeIncomplete()Z

    move-result v0

    .local v0, "inComplete":Z
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->isNeedUserEdgeTP()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/GestureSettings;->writeEdgeTpState(IZ)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/policy/edge/GestureSettings;->writeEdgeTpState(IZ)V

    goto :goto_0
.end method

.method private writeEdgeTpState(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "cZone"    # Z

    .prologue
    iget v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    if-eqz p2, :cond_1

    const-string v0, "persist.sys.edgetp.czone"

    .local v0, "zone":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mLastEdgeTpState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "zone":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    const-string v0, "persist.sys.edgetp.tzone"

    goto :goto_0
.end method


# virtual methods
.method public getSingleSlideStartAppInfo()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    const-string v2, "nubia_edge_single_move_switch"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public isGestureEnable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "nubia_edge_single_move_switch"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    move v1, v2

    goto :goto_0

    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    const-string v3, "nubia_edge_double_click"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "11"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    const-string v3, "nubia_edge_double_side_move"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "nubia_edge_move_in_switch"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "nubia_edge_move_loop"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    iget-object v3, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mSettingsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public systemBooted()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcn/nubia/server/policy/edge/GestureSettings;->loadSettings()V

    iget-object v0, p0, Lcn/nubia/server/policy/edge/GestureSettings;->mObserver:Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/GestureSettings$EdgeSettingsObserver;->observe()V

    return-void
.end method
