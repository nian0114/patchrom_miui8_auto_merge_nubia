.class public Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
.super Lcom/android/settings_exlib/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public final apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public extraInfo:Ljava/lang/Object;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public mounted:Z

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "id"    # J

    .prologue
    .line 1131
    invoke-direct {p0}, Lcom/android/settings_exlib/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 1132
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1133
    iput-wide p3, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->id:J

    .line 1134
    iput-object p2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->size:J

    .line 1136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 1138
    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1154
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 1155
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1156
    invoke-direct {p0, p2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->getBadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 1172
    :goto_0
    return v0

    .line 1159
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1160
    const v0, 0x10806b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    move v0, v1

    .line 1172
    goto :goto_0

    .line 1163
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v2, :cond_1

    .line 1166
    iget-object v2, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1167
    iput-boolean v0, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1168
    invoke-direct {p0, p2}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->getBadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v1, :cond_1

    .line 1142
    :cond_0
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1144
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 1151
    :cond_1
    :goto_0
    return-void

    .line 1146
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1147
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1148
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method
