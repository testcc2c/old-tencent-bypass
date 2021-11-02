.class public Lcom/tencent/tpshell/TPShellApplication;
.super Landroid/app/Application;
.source "TPShellApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TPShellApplication"

.field public static libname:Ljava/lang/String;

.field private static sException:Lcom/tencent/tpshell/ExceptionHandler;

.field private static s_apkPath:Ljava/lang/String;

.field private static s_dataDir:Ljava/lang/String;

.field private static s_libDir:Ljava/lang/String;

.field private static s_packageName:Ljava/lang/String;


# instance fields
.field private process_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tpshell/TPShellApplication;->sException:Lcom/tencent/tpshell/ExceptionHandler;

    sput-object v0, Lcom/tencent/tpshell/TPShellApplication;->s_packageName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tpshell/TPShellApplication;->s_dataDir:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tpshell/TPShellApplication;->s_libDir:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tpshell/TPShellApplication;->s_apkPath:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/tpshell/TPShellApplication;->libname:Ljava/lang/String;

    const-string v0, "tprt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tpshell/TPShellApplication;->process_name:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tpshell/TPShellApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tpshell/TPShellApplication;->process_name:Ljava/lang/String;

    return-void
.end method

.method private static native chmod(Ljava/lang/String;I)I
.end method

.method private static ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1}, Lcom/tencent/tpshell/TPShellApplication;->chmod(Ljava/lang/String;I)I

    :cond_0
    return-object p0
.end method

.method private static native getCrashReportHost()Ljava/lang/String;
.end method

.method private static native getEncBlockSize()I
.end method

.method private static native getEncType()I
.end method

.method private static native getGameId(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getProcessName()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/self/cmdline"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native getShellVersion()Ljava/lang/String;
.end method

.method public static getPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temaynw34bw6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getapkPath()Ljava/lang/String;
.end method

.method private static native getdataDir()Ljava/lang/String;
.end method

.method private static native getlibDir()Ljava/lang/String;
.end method

.method private static native getpackageName()Ljava/lang/String;
.end method

.method private native infoUpdate()V
.end method

.method private native initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tpshell/TPShellApplication;->getProcessName()Ljava/lang/String;

    move-result-object v5

    if-nez p5, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "files"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tpshell/TPShellApplication;->ensurePrivateDirExists(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tpshell/TPShellApplication;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "initialize failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/tpshell/TPShellApplication;->release()V

    const-string v0, "done"

    invoke-static {v0}, Lcom/tencent/tpshell/TPShellApplication;->log(Ljava/lang/String;)I

    return-void
.end method

.method private static native initinfo()I
.end method

.method private static native isAssertEnabled()I
.end method

.method private static native isBlockEncEnabled()I
.end method

.method private static native isX86()I
.end method

.method public static native log(Ljava/lang/String;)I
.end method

.method private static native release()V
.end method


# virtual methods
.method protected Initial()V
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/tpshell/TPShellApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tpshell/TPShellApplication;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tpshell/TPShellApplication;->Initial()V

    return-void
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/tpshell/TPShellApplication;->getPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-super {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method protected isMainProcess()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tpshell/TPShellApplication;->process_name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tpshell/TPShellApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
