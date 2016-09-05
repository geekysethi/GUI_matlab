function varargout = dem22(varargin)
% DEM22 MATLAB code for dem22.fig
%      DEM22, by itself, creates a new DEM22 or raises the existing
%      singleton*.
%
%      H = DEM22 returns the handle to a new DEM22 or the handle to
%      the existing singleton*.
%
%      DEM22('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEM22.M with the given input arguments.
%
%      DEM22('Property','Value',...) creates a new DEM22 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dem22_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dem22_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dem22

% Last Modified by GUIDE v2.5 30-Jun-2015 17:20:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dem22_OpeningFcn, ...
                   'gui_OutputFcn',  @dem22_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before dem22 is made visible.
function dem22_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dem22 (see VARARGIN)

% Choose default command line output for dem22
handles.output = hObject;

global x c
c=0;
x=0:pi/100:2*pi;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dem22 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dem22_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Angle.
function Angle_Callback(hObject, eventdata, handles)
% hObject    handle to Angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global x c
c=c+1;
if(c==1)
y=sin(x);

elseif(c==2)
y=cos(x);
elseif(c==3)
y=tan(x);

c=0;
end;

axes(handles.axes1)
plot(x,y)
