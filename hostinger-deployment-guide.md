# Deploying Your Website to Hostinger

This guide provides step-by-step instructions for deploying your Next.js static website to Hostinger.

## Prerequisites

- A Hostinger account with an active hosting plan
- Your domain registered and pointed to Hostinger's nameservers
- The static build files from the `out` directory of your Next.js project

## Step 1: Log in to Your Hostinger Account

1. Go to [Hostinger.com](https://www.hostinger.com/)
2. Click on "Login" and enter your credentials

## Step 2: Access File Manager or Set Up FTP

### Option 1: Using Hostinger's File Manager

1. From your Hosting dashboard, select your domain
2. Click on "File Manager" in the left sidebar menu
3. Navigate to the `public_html` directory (this is your website's root folder)
4. Delete any default files if they exist (like `index.html` or `index.php`)

### Option 2: Using FTP (Recommended for Larger Files)

1. From your Hosting dashboard, go to "Websites" → Select your domain
2. Go to "Files" → "FTP Accounts"
3. Create a new FTP account or use the existing one
4. Connect to your website using an FTP client like [FileZilla](https://filezilla-project.org/)
   - Host: Your FTP hostname (usually ftp.yourdomain.com)
   - Username: Your FTP username
   - Password: Your FTP password
   - Port: 21
5. Navigate to the `public_html` directory on the remote server

## Step 3: Upload Your Files

1. Upload all files and folders from your local `out` directory to the `public_html` directory on Hostinger
2. Make sure to maintain the folder structure exactly as it is in your `out` directory
3. Don't forget to include all the hidden files (like `.htaccess` if present)

## Step 4: Configure Hostinger Settings

### Set up Custom Error Pages (Optional)

1. Go to your Hostinger dashboard → Hosting → Select your domain
2. Navigate to "Website" → "Error Pages"
3. For the 404 error, set it to use the custom `404.html` page included in your build

### Enable HTTPS (Recommended)

1. Go to your Hostinger dashboard → Hosting → Select your domain
2. Navigate to "SSL/TLS" section
3. Enable the free SSL certificate if it's not already enabled
4. Choose "Force HTTPS" to ensure all traffic is secure

## Step 5: Test Your Website

1. Visit your website at your domain (e.g., https://yourdomain.com)
2. Test the following:
   - Home page loads correctly
   - Navigation works between pages
   - Animations function as expected
   - Images and assets are loading
   - Test on both desktop and mobile devices

## Troubleshooting Common Issues

### If Your Website Shows a Blank Page

1. Check the console for errors (F12 in most browsers)
2. Ensure all paths are correct (especially for images and JavaScript files)
3. Verify that all files were uploaded correctly

### If Animations Don't Work

1. Make sure your browser supports the animations
2. Check if there are any JavaScript errors in the console
3. Verify that the Framer Motion library is included in the bundle

### If Links Don't Work

1. Ensure you've uploaded all the directory structures for each route
2. Check if you need to configure URL rewriting rules on your hosting

## Maintenance

After deployment, you may need to update your website occasionally:

1. Make changes to your local development environment
2. Run `npm run build` to generate a new static export
3. Upload the updated files to Hostinger, replacing the old files

---

For additional help, contact Hostinger support or refer to their [knowledge base](https://support.hostinger.com/). 